#!/bin/bash
# Logger for PreToolUse (every attempt) and PostToolUse (every success).
# Appends one JSON line per event to logs/tool-calls.log: the event, the tool
# and its target (file, command, pattern or URL), never file contents.
INPUT=$(cat)
LOG_DIR="${CLAUDE_PROJECT_DIR:-.}/logs"
mkdir -p "$LOG_DIR"
printf '%s' "$INPUT" | jq -c '{
  time: (now | todate),
  event: .hook_event_name,
  tool: .tool_name,
  target: (.tool_input.file_path // .tool_input.command // .tool_input.pattern // .tool_input.url // "")
}' >> "$LOG_DIR/tool-calls.log"
exit 0
