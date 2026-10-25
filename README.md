# HealthTracker App

Course project for **CSET-455 Agile Software Development** (Lab 6) — a mobile app that lets
users log steps, sleep and water, see progress charts and sync their data to the server.

Work is planned in Jira (project **HTA**, board *HTA board*). Every branch, commit message and
pull request title starts with the Jira issue key (for example `HTA-6`) so the
**GitHub for Jira** app links the code to the story's *Development* panel.

## Definition of Done (code stories)
A story may move to **Done** only when all of these are true:
1. Code is on a branch named `HTA-<key>-<short-name>` and reviewed in a pull request whose title starts with the issue key.
2. The linked pull request is **merged** into `main` (Jira automation moves the story to Done on merge).
3. Acceptance criteria in the Jira story are met and checked by QA on the merged build.
4. No open bugs of priority High or above linked to the story.
