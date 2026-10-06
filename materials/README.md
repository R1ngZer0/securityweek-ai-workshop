# Course materials

Building AI Agents for ICS/OT Security: From Zero to Orchestrator. SecurityWeek ICS Cyber Security Conference, Nashville, October 6, 2026.

| File | What it is |
|---|---|
| `Building-AI-Agents-ICS-OT-Slides-2026.pdf` | The slides. |
| `Building-AI-Agents-ICS-OT-Workbook-2026.pdf` | The workbook. Every lab step by step, written for this codespace. |
| `modbus-gateway.conf` | The sample Modbus gateway config you analyze from Lab 2 on. |
| `hooks/protect-originals.sh` | Hook script for Lab 6E. It blocks edits to the original config. |
| `hooks/log-tool-call.sh` | Hook script for Lab 6E. It logs every tool call. |
| `settings/lab6g-settings.json` | The `.claude/settings.json` for Lab 6G. |

Work in `playground/`, not here. The labs tell you when to copy a file from this folder, for example:

```bash
cd /workspaces/securityweek-ai-workshop/playground
cp ../materials/modbus-gateway.conf .
```

The config is a training file modeled on a Moxa MGate gateway. It doesn't come from a real site, and it has deliberate weaknesses for the labs to find. Try the labs before you read the answer key in Appendix A of the workbook.

If the instructor updates these files during the day, run `git pull` in the terminal to get the new versions.
