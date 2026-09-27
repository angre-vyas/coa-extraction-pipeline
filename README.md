# CoA Directory Extraction Pipeline

A resumable, rate-limit-aware, CAPTCHA-safe data extraction pipeline for the
public Council of Architecture (coa.gov.in) architect directory.

Read `INVESTIGATION.md` first — it explains what we found about the site
(no public API, CAPTCHA on every search, and a published 3-searches-per-day
limit without subscription) and why the pipeline is built the way it is.

## 1. One-time setup (MacBook Air M2)

Open the **Terminal** app (Cmd+Space, type "Terminal", Enter).

```bash
cd ~/Desktop/coa_project        # go into this folder (adjust path if needed)
python3 -m venv venv            # create an isolated Python environment
source venv/bin/activate        # activate it (do this every new terminal session)
pip install -r requirements.txt # install the 3 libraries this project needs
```

You'll know `venv` is active because your terminal prompt starts with
`(venv)`. Every time you open a **new** Terminal tab/window to work on this
project, run `cd ~/Desktop/coa_project && source venv/bin/activate` again
first.

## 2. Create the database

```bash
python3 cli.py init
```

This creates `coa_directory.db` — a single file that holds every table.
You can open it visually anytime with the free **DB Browser for SQLite**
app (dbbrowser.io) if you want to look inside without typing commands.

## 3. Queue up searches

Add one at a time:
```bash
python3 cli.py add --type state --value Kerala
```

Or add many at once from a text file (one value per line — a ready-made
`sample_states.txt` with all Indian states is included):
```bash
python3 cli.py add-file --type state --file sample_states.txt
```

Allowed `--type` values: `name`, `year`, `regno`, `state`, `city`, `pincode`.

## 4. Run the extractor

```bash
python3 cli.py run
```

What happens:
- It takes the next queued search and opens the real search form.
- A CAPTCHA image pops open automatically (macOS Preview). Read it and type
  the code into the Terminal when asked.
- It submits the search, saves every record it finds straight into the
  database, and reports duplicates/incomplete records as it goes.
- **The site allows only 3 searches per day without a subscription.** After
  3, the pipeline stops itself and tells you to come back tomorrow — your
  queue is saved, nothing is lost, and running `python3 cli.py run` again
  later (today or tomorrow) picks up exactly where it stopped. This is the
  "resume without starting again" requirement in action.
- If you stop it early with Ctrl+C, same thing: just run `run` again later.

To process only one item at a time (good for your demo video, so you can
narrate each step):
```bash
python3 cli.py run --max 1
```

## 5. Check progress anytime

```bash
python3 cli.py status
```

## 6. Visual dashboard

In a **second** Terminal tab (keep the first one free for `run`):
```bash
cd ~/Desktop/coa_project && source venv/bin/activate
python3 dashboard.py
```
Then open **http://localhost:8000** in your browser. It auto-refreshes
every 10 seconds while extraction runs in the other tab. Press Ctrl+C in
that tab to stop the dashboard server.

## 7. If something doesn't parse right

The site's exact form field names and results-table layout can only be
confirmed by actually submitting a real search (which is exactly what
happens the first time you run `run`). If a search returns an error or
looks wrong, the full raw HTML response is auto-saved into the
`raw_debug/` folder, named after the search — open it in a browser to see
what the site actually sent back, or share that file so the parsing rules
in `extractor.py` can be adjusted.

## 8. Files in this project

| File | Purpose |
|---|---|
| `config.py` | All settings: URLs, the 3/day limit, delays, file paths |
| `db.py` | SQLite schema + all database read/write functions |
| `extractor.py` | The extraction engine: form discovery, CAPTCHA pause, parsing, retries |
| `cli.py` | The commands you type (`init`, `add`, `run`, `status`) |
| `dashboard.py` | Generates and serves the live progress dashboard |
| `INVESTIGATION.md` | Required deliverable: how the site was reverse-engineered |
| `sample_states.txt` | Ready-made list of all Indian states to queue |
| `coa_directory.db` | Created after step 2 — the actual database (your deliverable) |
| `raw_debug/` | Raw HTML saved from every real request, for troubleshooting/proof |

## 9. For your submission checklist

- **Source code**: this whole folder.
- **Database schema + export**: `coa_directory.db` itself (SQLite files
  are portable — you can also run `sqlite3 coa_directory.db .dump > schema_export.sql`
  in Terminal to get a text export).
- **Extracted dataset**: whatever is in the `architects` table so far
  (open with DB Browser for SQLite, or export: see command above).
- **Technical documentation**: this README + code comments in each file.
- **Investigation notes**: `INVESTIGATION.md`.
- **Demonstration video**: screen-record yourself running `cli.py run`
  (showing the CAPTCHA pause/manual solve), then `cli.py status`, then the
  dashboard page, then interrupt with Ctrl+C and run again to show resume.
- **Instructions to run**: this README, section 1–6.
