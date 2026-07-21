#!/usr/bin/env bash
# One-time setup for the trading-essentials skills
set -e
echo "Installing Python dependencies..."
pip install -r "$(dirname "$0")/requirements.txt"
cat <<'EOF'

Python deps installed.

Now set the API keys the skills need (add to your ~/.zshrc or ~/.bashrc):

  # REQUIRED by most screeners/analysers (Financial Modeling Prep):
  export FMP_API_KEY="your_fmp_key"          # https://site.financialmodelingprep.com

  # OPTIONAL — only if you use these specific skills:
  export FINVIZ_API_KEY="your_finviz_elite_key"   # finviz-screener (Finviz Elite)
  export ALPACA_API_KEY="your_alpaca_key"         # portfolio-manager / broker-linked skills
  export ALPACA_SECRET_KEY="your_alpaca_secret"
  export ALPACA_PAPER="true"                      # use paper-trading account

Each skill's SKILL.md states exactly which key/data source it needs.
EOF
