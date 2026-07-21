# Trading Skills — Essentials (Claude Code marketplace)

A ready-to-add Claude Code **marketplace** wrapping 28 curated US-equity trading & stock-evaluation
skills — a subset of [tradermonty/claude-trading-skills](https://github.com/tradermonty/claude-trading-skills) (MIT).

> ⚠️ **Not investment advice.** These are research/analysis tools. Output can be wrong or stale — verify independently.

---

## Install

### Option A — Claude Code CLI, from a local folder (no GitHub needed)
```bash
# from the extracted folder's PARENT directory
claude plugin marketplace add ./trading-skills-essentials
claude plugin install trading-essentials@trading-skills-essentials
```

### Option B — Desktop "Add marketplace" dialog (needs a GitHub repo)
The dialog only accepts a GitHub `owner/repo` or git URL, so first push this folder to your own repo:
```bash
cd trading-skills-essentials
git init && git add . && git commit -m "trading-essentials marketplace"
git branch -M main
git remote add origin https://github.com/<YOUR_USER>/trading-skills-essentials.git
git push -u origin main
```
Then in Settings → Plugins → **Add → Add marketplace**, enter:
```
<YOUR_USER>/trading-skills-essentials
```
Sync → Browse → install **trading-essentials**.

---

## Prerequisites — what's missing to actually RUN the skills

The skills call Python scripts against market-data APIs. Adding the plugin registers the skills, but
you also need the runtime below or the scripts will fail.

### 1) Python packages
```bash
pip install -r requirements.txt
# requests pyyaml numpy pandas scipy yfinance beautifulsoup4 opencv-python Pillow
```
(`opencv-python` + `Pillow` are only used by `breadth-chart-analyst`, which reads chart images.)

### 2) API keys (set as environment variables)
| Env var | Needed by | Where |
|---|---|---|
| `FMP_API_KEY` | **Most** screeners/analysers (CANSLIM, PEAD, us-stock-analysis, sector, earnings, macro, …) | Financial Modeling Prep — financialmodelingprep.com |
| `FINVIZ_API_KEY` | `finviz-screener` only | Finviz **Elite** |
| `ALPACA_API_KEY` + `ALPACA_SECRET_KEY` + `ALPACA_PAPER` | `portfolio-manager` and any broker-linked action | Alpaca (paper account recommended) |

`YOUR_API_KEY` seen in some SKILL.md files is a placeholder — replace with a real key per that skill's doc.

Run `./setup.sh` to install deps and print the export lines.

### 3) Skills that need NO key (work immediately)
`position-sizer`, `exposure-coach`, `pre-trade-discipline-gate`, `trade-performance-coach`,
`backtest-expert` (on your own CSVs), `options-strategy-advisor` (Black-Scholes math),
`trading-skills-navigator` — these are calculators/logic with no external data pull.

---

## Included skills (28)
See `SKILLS_INDEX.md` for the categorized list with one-line descriptions.

## License
MIT (inherited from tradermonty/claude-trading-skills). Curated subset; original authorship credited.
