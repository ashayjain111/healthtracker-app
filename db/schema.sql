-- HTA-6 Database Setup: health data schema (baseline 3-point story)
CREATE TABLE users (
    id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    email         TEXT UNIQUE NOT NULL,
    display_name  TEXT NOT NULL,
    created_at    TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE health_entries (
    id          BIGSERIAL PRIMARY KEY,
    user_id     UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    metric      TEXT NOT NULL CHECK (metric IN ('steps', 'sleep_minutes', 'water_ml')),
    value       INTEGER NOT NULL CHECK (value >= 0),
    logged_at   TIMESTAMPTZ NOT NULL DEFAULT now()
);
CREATE INDEX idx_entries_user_metric_time ON health_entries (user_id, metric, logged_at DESC);

CREATE TABLE goals (
    user_id     UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    metric      TEXT NOT NULL CHECK (metric IN ('steps', 'sleep_minutes', 'water_ml')),
    daily_target INTEGER NOT NULL CHECK (daily_target > 0),
    PRIMARY KEY (user_id, metric)
);
