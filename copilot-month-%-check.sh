#!/usr/bin/env bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Copilot Month % Check
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.author bradystroud
# @raycast.authorURL https://raycast.com/bradystroud

set -euo pipefail
pct="$(python3 - <<'PY'
import calendar, datetime
now = datetime.date.today()
days = calendar.monthrange(now.year, now.month)[1]
pct = now.day / days * 100
print(f"{pct:.1f}% (day {now.day}/{days})")
PY
)"

echo "Month Progress: $pct"
open "https://github.com/settings/copilot/features"
