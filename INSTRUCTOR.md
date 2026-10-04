# Instructor notes: SecurityWeek AI Workshop

## Before the day
- **Test it on a Windows machine:** open the codespace from the README button, then sign in both ways (Claude account, API key).
- **Test from a corporate network** if attendees bring work laptops. Some networks block `*.github.dev`.
- **Tell attendees to create a GitHub account in advance**, and to try opening the codespace once.

## API keys for attendees without a Claude subscription
- Create the keys in the Anthropic Console (console.anthropic.com). Use a **dedicated workspace** for the workshop, with a **spend limit** on it.
- One key per attendee, so a leaked key can be revoked alone.
- **Revoke the keys after the workshop.** Deleting the workspace removes them all.

## Cost
- Codespaces bill each attendee's own GitHub account, against GitHub's free personal allowance. A 2-core machine for a day-long workshop sits well inside it. Nothing is billed to this repo's owner.
- No prebuilds are configured (they would bill the repo owner). First start takes about 2 minutes.

## Updating materials
Commit into `materials/`. Attendees who already have a codespace run `git pull` to get the changes.
