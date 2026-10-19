# CLAUDE.md — Mastering Prompt Engineering — The Interactive Edition
# Commander-Governed Project

---

## GOVERNANCE — TIERED LOADING (M-21)

This project is governed by **Commander v1.6.2**
(github.com/IDSS123a/commander). The 🔴 CRITICAL rules are inlined
below and always apply — do NOT bulk-load full Commander documents at
session start. Read a full document only when the task enters its
domain:

| Read on demand | When |
|---|---|
| ENGINEERING_RULES.md | before implementation work (Tier 2) |
| ARCHITECTURE_PATTERNS.md | before structural/schema decisions (Tier 2) |
| ACA_COMMUNICATION_PROTOCOL.md (C-1–C-5) | output/format questions (Tier 2) |
| FEATURE_LIFECYCLE.md + DONE_CHECKLIST.md | at sprint close |
| PROMPT_LIBRARY/* | when the Director invokes that ritual |

Base URL: `https://raw.githubusercontent.com/IDSS123a/commander/main/`

**Always read (small, project-specific):**
- Project Constitution: `web-app-mastering-prompt-engineering/CONSTITUTION.md` — wins over Commander for this project
- Controlling mandate: `docs/mandate/MASTERING_PROMPT_ENGINEERING_ACA_MASTER_MANDATE.html` (precedence is defined in CONSTITUTION.md)
- Current sprint: `web-app-mastering-prompt-engineering/sprints/SPRINT_01.md`

---

## 🔴 CRITICAL RULES — ALWAYS IN FORCE

Compressed here for zero-fetch loading; full text in CONSTITUTION.md /
ENGINEERING_RULES.md governs on any doubt.

**Mindset (M):**
- **M-1 CTO Principle** — act as CTO, not task-executor; every decision must survive: "maintainable and understandable by the next ACA with no extra context?"
- **M-2 Thinking Order** — vision → architecture → domain → data → API → feature → component → code. Never UI-first, never skip.
- **M-3 Decision Hierarchy** — institution rules > security > data integrity > architecture consistency > performance > developer convenience > UI > visuals.
- **M-4 Anti-Hallucination** — never invent endpoints, tables, env vars, services, roles, or policies. Not specified → STOP and ask.
- **M-5 Layered Architecture** — exact layer order, never mix, never skip.
- **M-7 Single Source of Truth** — every fact lives in exactly one place.
- **M-10 Context Insufficiency** — missing context is stated, never guessed around.
- **M-15 Confidentiality Propagation** — secrecy/anonymity rules apply to EVERY surface: code, comments, commits, logs, filenames, docs.
- **M-21 Tiered Loading** — this file implements it; reference docs (DECISION_LOG, ACA_MANAGEMENT_GUIDE, CLAUDE_CODE_OPERATIONS) are never session-start reads.
- **M-22 KRAJ Protocol** — on "KRAJ": collect corrections → analyse → propose COMMANDER_UPDATE_PROPOSAL.md → wait for approval → only then touch the commander repo.

**Engineering (E) — read the full rules before heavy code work:**
- **E-1 TypeScript** — strict, no `any`, no `@ts-ignore`.
- **E-2 Zod** — validate every boundary; schemas only in `lib/validation/schemas.ts`.
- **E-4 Security** — bcrypt ≥12; HTTP-only SameSite=Strict sessions; RBAC resolved server-side from DB, never from token claims; uploads MIME+magic-byte verified; user text HTML-escaped in emails; secrets only in `.env`.
- **E-5 Error Handling** — every async op in try/catch; no silent failures; standard `{ success, ... }` response shapes; specific status codes before generic 500.
- **E-6 Route Sequence** — authenticate → authorise → validate (Zod) → execute → return.

---

## LESSON CAPTURE (M-18 — hook-enforced)

The `lessons-guard` hook blocks session end if files changed without
lessons captured. Append to `corrections/SPRINT_XX_LESSONS.md`
**immediately** when: the Director corrects you, an environment gotcha
bites, a rule-violation bug appears, a course correction happens, or a
Commander improvement candidate surfaces. Entry format:
PROMPT_LIBRARY/sprint-lessons.md. Consolidate at sprint close per
DONE_CHECKLIST.md.

---

## AUTOMATION LAYER (hooks — deterministic, zero-token)

Installed in `.claude/`:
- `version-check.js` (SessionStart) — warns on Commander version drift
- `log-change.js` + `project-guard.js` (PostToolUse) — auto-logs every
  edit; project-guard BLOCKS forbidden patterns per E-13
  (config: `.claude/project-guard.config.json`)
- `lessons-guard.js` + `patterns-detect.js` (Stop) — enforces lesson
  capture; pre-computes rule recurrence for KRAJ

Treat guards as allies, not obstacles — session memory is unreliable,
the filesystem is not (M-18).

**ACAs without hook support:** run
`node .claude/hooks/project-guard.js --scan` before every commit
(E-13 graceful degradation).

---

## PROJECT-SPECIFIC NOTES

- **Language:** talk to the Director in Bosnian. All product content, code, comments, specs, reports in English.
- **Gates:** G0 discovery (done) → G1 plan (approved 2026-10-19) → G2 vertical slice → G3 full product → G4 knowledge governance → G5 commercial release. Only the Director's explicit approval opens a gate (mandate §16). A passing build or finished phase is never approval.
- **Source of truth:** ONLY `source/Manual_Prompt_Engineering_19102026_KOREKCIJE.docx` (SHA-256 in `source/SOURCE_SHA256.txt`). The Director ordered that this and no other version of the book is used. The earlier PDF edition is superseded and must not be used. Canonical text (L0) is never silently edited. Corrections, clarifications and extensions live in separate layers (L1–L3) — see `docs/planning/D1-D8_discovery_plan.md`, D3, and `docs/planning/ADDENDUM_01_source_change.md`.
- **Page mapping:** a DOCX reflows, so page numbers are not stored in it. Locate content by section path and stable ID. PDF page index / printed page label are filled only from a PDF exported by the Director from this same DOCX (see DECISION_LOG MPE-DL-010).
- **Stack (M-16 deviation, see DECISION_LOG.md MPE-DL-002):** static-first, local-first. No Supabase, no accounts, no payment, no live AI, no telemetry in the slice.
- **Do not** run scaffolding, install packages, add services or tools, or start P2/P3 without explicit approval. New tools (even ingestion tooling) need a DECISION_LOG entry and Director approval (M-12).
- **Test reporting:** only PASS / FAIL / BLOCKED / NOT TESTED / NOT APPLICABLE (mandate §14.4).
- **Repository must stay private** (contains the full book PDF).

---

*Commander v1.6.2 — IDSS123a Organisation — Davor Mulalić*
