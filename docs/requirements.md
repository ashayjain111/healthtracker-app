# HealthTracker v1.0 — Requirements & Acceptance Criteria (HTA-4)

## Personas
- **Riya, 21, student** — wants a 10-second way to log water and sleep between classes.
- **Arjun, 38, office worker** — wants to see whether his weekly step count is improving.

## v1.0 features (MoSCoW: Must / Should)
| Story | Feature | MoSCoW |
|---|---|---|
| HTA-8 | Log steps, sleep and water | Must |
| HTA-13 | Weekly progress charts | Should |
| HTA-9 | Sync logged data to the server | Must |
| HTA-14 | Reminders & notifications | Could → deferred to v1.1 |

## Acceptance criteria (examples)
1. A user can log a water entry in at most 2 taps; the entry appears in today's total immediately.
2. Sleep can be logged as start/end time; duration is calculated automatically.
3. Data logged offline is synced within 30 s of the device coming back online.
4. The weekly chart shows the last 7 days and updates after every new entry.
