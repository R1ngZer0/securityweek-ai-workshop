#!/bin/bash
# PreToolUse guard: block Edit and Write calls on files in originals/, and any
# Bash or PowerShell command that mentions originals anywhere. Reads the hook payload
# (JSON) on stdin. Needs jq.
INPUT=$(cat)
TARGET=$(printf '%s' "$INPUT" | jq -r '.tool_input.file_path // .tool_input.command // empty') || {
  echo "Blocked by hook: could not read the tool input (is jq installed?)" >&2
  exit 2   # fail closed: if the guard can't check, it blocks
}
TARGET="${TARGET//\\//}"   # Windows sends backslashes; make them forward slashes

shopt -s nocasematch       # match Originals, ORIGINALS and so on (macOS and Windows paths ignore case)
if [[ "$TARGET" == *originals* ]]; then
  echo "Blocked by hook: originals/ holds the pristine configs and may not be changed. Work on a copy outside originals/." >&2
  exit 2   # exit 2 = block the tool call; stderr goes back to Claude
fi

exit 0     # no objection; the normal permission flow applies
