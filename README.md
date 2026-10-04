# SecurityWeek AI Workshop

This workshop uses Claude Code, and everything runs in your web browser. You don't install anything on your computer, and it works the same on Windows, Mac, Linux and Chromebook, including work laptops without admin rights.

## Before the workshop (5 minutes)

1. **Get a GitHub account** if you don't have one: https://github.com/signup (it's free).
2. **Decide how you'll sign in to Claude Code:**
   - **Option A, your own Claude subscription:** a Claude Pro, Max, Team or Enterprise account.
   - **Option B, an API key:** the instructor hands you a key in class. Skip this step if you're using one.
3. **Try opening your workshop environment** (steps below). If it opens and shows this page, you're ready.

## Open your workshop environment

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/R1ngZer0/securityweek-ai-workshop?quickstart=1)

1. Click the button above and sign in to GitHub if asked.
2. Click **Create codespace**. Leave the defaults as they are.
3. Wait about 2 minutes the first time. A VS Code editor opens in your browser, with a terminal at the bottom.
4. When the terminal shows `Claude Code is installed`, you're ready.

Your codespace keeps your work. Next time, go to https://github.com/codespaces and reopen the same one rather than creating a new one.

## Start Claude Code

In the terminal at the bottom of the screen, type:

```bash
claude
```

### Option A: sign in with your Claude account

1. Choose **Claude account with subscription**.
2. Claude Code shows a link. Click it, or copy it into a new browser tab, and sign in to Claude.
3. Approve the access. If the page shows you a code, copy it and paste it back into the terminal.

### Option B: use an API key from the instructor

Paste your key into the terminal **before** starting Claude Code:

```bash
export ANTHROPIC_API_KEY=paste-your-key-here
claude
```

When Claude Code asks whether to use the detected API key, answer **Yes**.

Optional: to avoid pasting the key each time, add it as a Codespaces secret named `ANTHROPIC_API_KEY` at https://github.com/settings/codespaces and give it access to your codespace's repository. Restart the codespace afterwards.

**Keep your key private.** Don't paste it into chat, slides or a file you commit.

## Where to work

- `materials/` has the slides, the workbook and the course files.
- `playground/` is an empty folder for the exercises: `cd playground` and start `claude` there.

## If something goes wrong

| Problem | Fix |
|---|---|
| "Create codespace" is greyed out, or you get an error about limits | Check you're signed in to GitHub. On a work account your organization may block Codespaces, so use a personal GitHub account. |
| The page won't load on a work laptop | Your company network may block GitHub Codespaces. Try a phone hotspot, or pair with a neighbour. |
| `claude: command not found` | Close the terminal (trash-can icon) and open a new one: **Terminal → New Terminal**. If it still fails, run `npm install -g @anthropic-ai/claude-code`. |
| The sign-in link doesn't come back to the terminal | Copy the code shown on the web page and paste it into the terminal. |
| "Invalid API key" | Check there are no spaces or quote marks around the key, and that you used `export` in the same terminal you ran `claude` in. |

## After the workshop

Codespaces stop on their own after 30 minutes of inactivity. Your free GitHub allowance covers a workshop easily. To delete yours when you're done, go to https://github.com/codespaces, open the **⋯** menu and choose **Delete**.
