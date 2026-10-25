// HTA-7 Backend Development: health data + auth services (work in progress)
const express = require('express');
const app = express();
app.use(express.json());

// POST /api/entries  { metric, value }  -> stores one health entry for the signed-in user
app.post('/api/entries', (req, res) => {
  const { metric, value } = req.body || {};
  if (!['steps', 'sleep_minutes', 'water_ml'].includes(metric) || !(value >= 0)) {
    return res.status(400).json({ error: 'invalid entry' });
  }
  // TODO(HTA-7): persist via db layer and attach authenticated user id
  return res.status(201).json({ metric, value });
});

app.get('/api/health', (_req, res) => res.json({ ok: true }));
module.exports = app;
