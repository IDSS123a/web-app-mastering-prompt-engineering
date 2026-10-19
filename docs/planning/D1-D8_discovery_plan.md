# Mastering Prompt Engineering — The Interactive Edition
## G0 Discovery Report: Deliverables D1–D8

- Mandate: ACA Master Mandate v1.0 (19 Oct 2026), Section 12 — inspect and plan only
- Governance: Commander v1.6.2
- Report date: 19 October 2026
- Status: **PROPOSAL — awaiting Director approval (Gate G1). Nothing has been implemented.**
- Files changed in any project: none. No repository created, no packages installed, no scaffolding run.

---

## 0. Conflicts, ambiguities, assumptions

### 0.1 Conflicts and ambiguities (decision needed where marked)

| # | Finding | Effect | Recommendation |
|---|---------|--------|----------------|
| C1 | Mandate §01.2 asks the five Commander bootstrap questions; the Director supplied the mandate instead of answers. The mandate only *proposes* values (name, FULL, no codebase, rules). | Name, mode and codebase status are proposals, not confirmed answers. | Treat as confirmed on plan approval (Decision Q1). |
| C2 | Commander initial instructions Step 3 auto-scaffolds (repo, stack, hooks). Mandate §01.1/§13.2 forbids this until D1–D8 approval. | Direct conflict. | Mandate wins by §00.1 precedence. Step 3 deferred. Deviation to be logged in DECISION_LOG.md after the repo exists. |
| C3 | Mandate refers to a "required standalone or local-first distribution mode" (§13.2) but never states that a standalone offline file is a requirement. | Affects architecture (D5). | Decision Q3. |
| C4 | Commander FEATURE_LIFECYCLE v1.5.2 says analysis/plan/tasks are produced via `/specify`, `/plan-feature`, `/tasks`. The Step 3 automation install list contains only `kraj`, `sprint-close`, `commander-audit` skills. | Those three skills may not be installed by bootstrap. Not verified (CLAUDE_CODE_OPERATIONS.md is a reference doc not loaded under M-21). | Verify at bootstrap; if absent, follow the lifecycle manually and record a Commander improvement candidate. |
| C5 | Commander first-commit message in initial instructions says "Commander v1.5"; current version is 1.6.2. | Cosmetic inconsistency. | Use v1.6.2. Record as Commander improvement candidate. |
| C6 | Commander architecture (A-1 Five Layers, A-3 Repository, A-8 Supabase clients, E-4 RLS items) assumes a server/database stack. A static-first product has no server layer at slice stage. | Some rules are not applicable until a server exists. | Per M-16, translate patterns to the chosen stack and document in project DECISION_LOG.md. Mark non-applicable DONE_CHECKLIST items N/A with rationale. |
| C7 | Mandate §04 says Chapter 8 includes an "ethical audit workshop". The PDF table of contents lists only two Chapter 8 sections (Guiding Principles; Bias Detection and Mitigation). The word "Audit" appears on printed pages 102, 103, 105, 106 (inside Chapter 8). | Mandate's curriculum list and TOC may differ. Not yet reconciled. | Reconcile in D2 full-text audit; do not assume either is right. |
| C8 | Mandate §04 says Chapter 6 covers "research analysis with RAG principles". The TOC lists "Research & Analysis → The Archivist's Lens". The RAG content was not text-searched. | Unverified. | Verify in D2 audit. |

### 0.2 Assumptions (not requirements until the Director confirms)

- 📌 ASSUMED: The Director is the sole rights holder of the book text (PDF credits author and publisher as Davor Mulalić, © 2025, ISBN 979-8-31-739808-8). Rights to fonts and images inside the PDF are **not** assumed (see D7).
- 📌 ASSUMED: Slice hosting and tooling must cost €0.
- 📌 ASSUMED: Target browsers/devices are not yet agreed (listed as a decision, Q8).
- 📌 ASSUMED: The mandate HTML is the authoritative copy. It was supplied inline in the conversation and was **not** found as a file in `/mnt/user-data/uploads`.

---

## D1 — Environment and asset inventory

### D1.1 Verified assets

| Item | Verified value |
|------|----------------|
| Source PDF path | `/mnt/user-data/uploads/1792436006492_Manual_Prompt_Engineering_10042025_ORIGINAL_WITH_COVER-CORRECTIONS-28122025.pdf` (the numeric prefix is added by the upload platform; the remainder matches the expected filename) |
| File size | 3,812,326 bytes |
| SHA-256 | `889a454f3c343ebfcbedf3fd2f1215c9b917a5259574c89b4a2b5372f9729468` |
| Format | PDF 1.7, A4 (595.32 × 841.92 pt), 244 pages, unencrypted, no forms, no JavaScript, 0 embedded files |
| Producer | Microsoft Word 2024; author metadata: Davor Mulalić |
| Tagged PDF | Yes (structure tree present; not yet inspected) |
| PDF metadata dates | Created and modified 2026-10-19 18:51 UTC. The dates in the filename (10042025, 28122025) are **not** in the metadata. The fingerprint is valid for this export only. |
| Second upload | `/mnt/user-data/uploads/1792435740404_initial_instructions.md` — Commander Initial Instructions v1.6.2 |
| Mandate | Supplied inline; no disk path |

### D1.2 Commander governance documents (all 7 read in full, from `main`)

| Document | Version read |
|----------|--------------|
| CONSTITUTION.md | 1.6.2 |
| ENGINEERING_RULES.md | 1.5.3 |
| ARCHITECTURE_PATTERNS.md | 1.5.2 |
| ACA_COMMUNICATION_PROTOCOL.md | 1.5.2 |
| FEATURE_LIFECYCLE.md | 1.5.2 |
| DONE_CHECKLIST.md | 1.5.3 |
| DECISION_LOG.md | 1.5.2 (contains DL-001 to DL-013) |

Not read (not in the mandated list; M-21 forbids loading at session start): CLAUDE_CODE_OPERATIONS.md, ACA_MANAGEMENT_GUIDE.md, PROJECT_CLAUDE_MD_TEMPLATE.md, PROMPT_LIBRARY/*.

### D1.3 Working environment

- Claude web chat sandbox (Ubuntu); no project filesystem, no git repository, no `gh` login. Files persist only as downloads.
- Shell network access is disabled; pages can be fetched only through the fetch tool.
- Available and used: poppler-utils (`pdfinfo`, `pdffonts`, `pdfimages`, `pdftotext`, `pdftoppm`, `pdfdetach`), pypdf.
- Repository status: none located, none assumed.
- Tool constraint from mandate §11.2 (CMD-only if specified): not specified for this project; to be confirmed with the Director before any Windows-side scripts are proposed.

---

## D2 — Source-fidelity audit plan and preliminary findings

### D2.1 Preliminary findings (verified in this session)

**Structure**
- 244 PDF pages. Front matter occupies PDF pages 1–5 (cover, copyright page, 3 TOC pages). Body pages carry the footer "Page | N".
- **Printed page = PDF index − 5** on all 237 pages that have a footer (PDF 6–242). Pages 1–5, 243, 244 have no printed number. Page labels embedded in the PDF equal the PDF index (not the printed number), so they must not be used.
- Foreword begins on PDF 6 (printed 1). Chapter 1 begins on PDF 8 (printed 3).

| Section | PDF start | Printed start | Verified |
|---------|-----------|---------------|----------|
| Chapter 1 | 8 | 3 | yes |
| Chapter 2 | 15 | 10 | yes |
| Chapter 3 | 30 | 25 | yes |
| Chapter 4 | 44 | 39 | yes |
| Chapter 5 | 57 | 52 | yes |
| Chapter 6 | 71 | 66 | yes |
| Chapter 7 | 85 | 80 | yes |
| Chapter 8 | 100 | 95 | yes |
| Chapter 9 | 112 | 107 | yes |
| Chapter 10 | 118 | 113 | yes |
| Chapter 11 | 129 | 124 | yes |
| Appendices divider | 136 | 131 | yes |
| Appendix A | 137 | 132 | yes |
| Appendix B | 150 | 145 | yes |
| Appendix C | 216 | 211 | yes |
| Appendix D | 225 | 220 | yes |
| Appendix E | 235 | 230 | yes |
| Appendix F | 238 | 233 | yes |
| Last printed page | 242 | 237 | yes |

- All 11 chapters and 6 appendices named in the mandate exist and begin at the TOC page + 5.
- All 15 Appendix B blueprint headings were found at TOC page + 5 (Blueprint 1 on PDF 150 … Blueprint 15 on PDF 210).
- 29 numbered chapter sub-sections in the TOC were checked against the page text: 27 matched the TOC page. Two need manual follow-up: "Few-Shot Learning" (TOC says printed 28; the section's introductory text appears on printed 29) and "Structuring Output with Tags" (TOC says printed 52; the exact heading wording was not matched by the automated search).

**Extraction quality**
- Text layer present on 241 of 244 pages. Low or no text: PDF 1 (cover, raster), PDF 243 (contains only "Note:"; image not yet viewed), PDF 244 (back cover, raster; text visible in the image but not extractable).
- Fonts: Century Gothic (embedded subsets), Calibri, Courier New, Symbol, Wingdings (embedded), Arial/Arial-Bold (not embedded, WinAnsi). Text extraction looked clean on all sampled pages. Bullets/symbols from Symbol and Wingdings were not yet checked for correct mapping.
- Raw extracted volume: about 78,000 words (includes footers and TOC).
- Images: 18 content raster images wider than 200 px, mostly on chapter-opening pages and figure pages (PDF 29, 43, 56, 70, 84, 99, 111, 117, 128 carry four image entries each), plus cover and back cover. Other entries are masks or tiny placeholders.
- **Figures contain text that is not in the text layer.** Example: the five-pillars class diagram on PDF 29 (printed 24) holds labels such as method names that only OCR or manual transcription can recover.
- 155 lines in the extracted text begin with `###`. These are prompt delimiters shown inside the book's example prompts, not headings, and must not be mistaken for Markdown headings during ingestion.
- Pages visually inspected so far: PDF 1, 29, 244. All other pages: text-layer only.

### D2.2 Audit plan

1. Rasterise every page at 100–150 DPI and compare against the extracted text for the front matter, all figure pages, all pages containing prompt examples, and a statistical sample of the remaining pages. Record the sample size and method.
2. Run OCR or manual transcription on raster figures; store results as a separate, labelled **added** layer (alt text), never merged into canonical text.
3. Define and document a deterministic normalisation procedure (de-hyphenation of justified line breaks, header/footer removal, smart quotes, bullet mapping). Keep exact extracted text and normalised search text in separate fields.
4. Inspect the PDF tag structure as an optional aid for heading detection; verify against page images.
5. Reconcile C7 and C8, and the two TOC discrepancies.
6. Produce the source-fidelity report: coverage per section, unmapped or uncertain passages, extraction confidence per page, and remediation proposals for approval.

Remediation proposals (for approval): manual transcription of figures; re-export from the original Word file if clean source text is available (Director decision, Q9); a human proofreading pass only on pages flagged low-confidence.

Limitations recorded: only text extraction plus 3 page images were used; no full page-by-page visual comparison has been done; extraction tools used were poppler and pypdf only.

---

## D3 — Canonical curriculum and content-mapping strategy

### D3.1 Stable IDs

```
mpe.fm.foreword                    front matter
mpe.ch02                           chapter
mpe.ch02.s03                       numbered section (as in the TOC)
mpe.ch02.s03.p014                  passage (paragraph/block) — sequence within section
mpe.ch02.fig01                     figure
mpe.app-b.bp07                     blueprint example
mpe.app-b.bp07.p003                passage inside a blueprint
```

IDs never change after publication. Reordering is represented by a separate display order, never by renumbering.

### D3.2 Source location record (per passage, figure, table)

`id`, `type` (heading | paragraph | list | prompt-example | figure | table | callout), `pdf_page_index` (1-based), `printed_page_label` (e.g. "24", or null for pages 1–5, 243, 244), `section_path`, `exact_text` (as extracted), `search_text` (normalised), `extraction_method`, `extraction_confidence`, `review_status`, `source_sha256`.

### D3.3 Content layers (separate files, separate review states)

| Layer | Content | Mutable? |
|-------|---------|----------|
| L0 canonical | Original text, order, source location, checksums | Immutable once approved; changes only via a documented transcription correction with Director sign-off |
| L1 clarification / correction / qualification | Linked to an L0 passage ID; states scope and evidence | Versioned |
| L2 extension / new topic | Provenance, date, compatibility, review status | Versioned |
| L3 activity | Exercise definition, objective, rubric, link back to L0 | Versioned |

### D3.4 Coverage matrix

One row per section and per blueprint (11 chapters + about 31 chapter sub-sections + 6 appendices + 15 blueprints). Columns: source id, PDF pages, printed pages, digital representation, learning objective, interactive asset, evidence/extension links, review status, acceptance test ID, disposition (represented | partial | blocked | deferred with reason). A section without a disposition fails the check in test T-16.

---

## D4 — Requirements traceability matrix (mandate → deliverable → test)

| Mandate § | Requirement (short) | Planned deliverable | Acceptance test |
|-----------|---------------------|---------------------|-----------------|
| 00.3 | Bosnian to Director, English deliverables | All reports | Manual review each phase (T-20) |
| 00.4 | Entire book canonical; layers separate | D3, L0–L3 structure | T-16, T-17 |
| 00.4 | Core works without paid AI | AI boundary interface, off by default | T-12 |
| 01.1 | No Step 3 before approval | This report | T-21 (no repo/scaffold before G1) |
| 03.1 | Source inspection and inventory | D1, D2, inventory file | T-16 |
| 03.2–03.4 | Layers; no silent edits | Layer files, checksum manifest | T-17 |
| 03.5 | Fidelity report | D2 report (full) | T-16 |
| 04.2 | Coverage matrix, explicit disposition | D3.4 | T-16 |
| 05.1 | Six environments | Slice: Reader, Lab, Atlas-lite list/search; others planned | T-05 to T-09 |
| 05.2 | Visual direction, legible reading | Design tokens (slice) | T-10 (contrast), T-11 |
| 05.3 | Keyboard, focus, screen reader, reduced motion, WCAG 2.2 AA target | Slice accessibility checks | T-10, T-11 |
| 05.4 | Progressive enhancement, measured performance | Lazy 3D, performance log | T-14, T-15 |
| 06.1 | Five Pillars Prompt Builder | Slice working exercise | T-06, T-07 |
| 06.2–06.9 | Other labs | Later phases (P3+) | Defined in later phase mandates |
| 07 | Requirements before framework; decision record | D5 | T-22 (decision record complete) |
| 07.5 | Dependency/licence inventory, no paid services | D7 | T-18 |
| 08 | Evidence lifecycle, statuses, human approval | Slice extension record + claim record | T-17, T-19 |
| 09 | Privacy, local storage disclosure, no secrets | Slice storage notice | T-13 |
| 10 | Commercial hypotheses only, no payments | D7/D8 | T-21 |
| 11 | Phased protocol, stop at gates | D8 | T-21 |
| 14.4 | Honest PASS/FAIL/BLOCKED/NOT TESTED | Test log | Every report |

All tests below are **NOT TESTED** at this stage.

---

## D5 — Architecture options and recommendation

### D5.1 Requirements the choice must satisfy

Source integrity (immutable L0), core independence (no paid AI, works offline-capable), accessibility, reading comfort on long text, progressive 3D, credible later path to accounts and payment, zero cost for the slice, maintainability by a non-coder with ACAs, Commander compatibility.

### D5.2 Options

🎯 **DECISION: application architecture for the vertical slice**

| Option | Description | Advantages | Disadvantages | Cost / lock-in |
|--------|-------------|------------|---------------|----------------|
| A. Commander default | Next.js + Supabase + Vercel from day one | Matches Commander defaults (DL-001–DL-008); full path to accounts | Requires a database and auth that the slice does not need; adds RLS/IDOR scope; weakens "core works without a server" | Supabase and Vercel free tiers have limits; moderate lock-in |
| B. Static-first | Static site, content as validated JSON/Markdown, progress in browser storage, optional 3D | Meets core independence and offline path; cheapest; simplest security surface | No secure accounts, payment enforcement or sync; those need a service later | None for slice |
| C. Static-first now, server later | B for the slice and early phases, with a documented extension point to add Supabase/Vercel for accounts, payment or sync | Keeps Commander path open (M-16 translation); defers cost and risk until validated | Needs discipline to keep content, logic and presentation separated | Low |

Framework for the static layer (to be settled in the technology decision record): **Next.js with static export** keeps the Commander default framework and the later server path; Vite + React (DL-009 precedent) is lighter but moves away from the default. A content-focused static generator would be a new dependency and needs Director approval under M-12.

⚠️ **ARCHITECTURE DECISION (recommended):** Option C, using Next.js static export, TypeScript strict, Zod for content and exercise schemas, and no Supabase in the slice. Local deterministic exercises. Optional AI behind an `AIProvider`-style interface (A-5), disabled by default and not wired in the slice. 3D loaded lazily, with a visible off switch.

**RISK:** Next.js static export disables Server Actions and similar server features, so Commander's Application-layer examples do not apply as written (C6). A standalone single-file offline distribution (if required, Q3) would need its own build target. Reading performance with a very large content set must be measured, not assumed.

**Reversible vs lock-in:** framework and hosting choice are reversible while content is stored as plain structured files. Choosing a database or payment provider is not and is deferred to later gates.

### D5.3 Technology decision record (slice)

| Choice | Requirement | Options | Recommendation | Reversible | Decision owner |
|--------|-------------|---------|----------------|-----------|----------------|
| Framework | Static output, later server path | Next.js export; Vite+React; other generators | Next.js export (pending Q4) | Yes | Director |
| Content store | Immutable canonical text, stable IDs | JSON/Markdown files with schema; database | Files with Zod schema, checksum manifest | Yes | Director |
| Progress storage | Local, disclosed | localStorage/IndexedDB; server | Browser storage with reset control | Yes | Director |
| Search | Passage-level, offline | Own small index; a library | Own small index first; a library only with approval | Yes | Director |
| 3D | Enhancement only | three.js; CSS-only | three.js, lazy loaded, optional; final choice after performance tests | Yes | Director |
| Hosting | Free static hosting | Vercel; GitHub Pages; others | Vercel (Commander DL-003) for preview only; no public launch before G5 | Yes | Director |
| AI | Optional, isolated | Provider interface; none | Interface defined, no provider wired | Yes | Director |

Licences, costs and versions for each candidate are listed in D7 and must be verified at install time; they are not verified now.

---

## D6 — Vertical-slice specification and acceptance-test plan

### D6.1 Proposed scope

**Source material:** Chapter 2, "Anatomy of an Effective Prompt: The Five Pillars" (PDF 15–29, printed 10–24). It contains the five-pillars figure on PDF 29 and the book's worked "repaired prompt" example, and aligns directly with the Five Pillars Prompt Builder in mandate §06.1.

**User journey:** open the Explorer sample → see curriculum list and search → open Chapter 2 in the Immersive Reader → read the canonical passage with its source label (chapter, PDF page, printed page) → expand a visibly separate editorial extension linked to the Delimiters passage → open the Prompt Lab → assemble a prompt from the five pillars → see validation feedback → copy or reset → toggle reduced-effects → resume on mobile width.

**Included (one each):**
1. Reading passage (canonical L0): one section of Chapter 2 with exact wording and source location.
2. Editorial extension (L1): a clarification attached to the Delimiters passage stating that delimiters help structure a prompt but are not by themselves a security boundary. Candidate evidence (official vendor guidance, OWASP LLM application guidance) must be **located and read** during the slice; none is verified now. Status in the slice: **Under review**, shown in a clearly labelled area until a human approves it.
3. Working exercise: Five Pillars worked example with a rubric and deterministic checks.
4. Prompt Lab interaction: five fields (Context, Instructions, Examples, Constraints, Delimiters), assembled prompt view, copy, edit, reset. No live AI.
5. Navigation and search: chapter list, section nav, passage-level search over the slice content, return path.
6. Responsive layout: mobile, tablet, desktop widths.
7. Reduced-effects mode: user toggle plus OS reduced-motion preference; 3D (if included) is optional.

**Excluded:** other chapters, payment, accounts, live AI, telemetry, deployment to a public URL.

**Open scope question (Q6):** whether the slice includes one minimal lazy-loaded 3D element to prove progressive enhancement, or defers 3D to a later phase. Recommendation: include one, with an off switch.

### D6.2 File plan (proposed; nothing created)

`content/l0/ch02.*` (canonical), `content/l1/` (extension and claim record), `content/l3/` (exercise), `content/manifest.*` (checksums and source map), schemas, reader, lab, search, design tokens, tests, CHANGELOG, DECISION_LOG, `corrections/SPRINT_01_LESSONS.md`. Exact paths are fixed in the sprint plan after approval.

### D6.3 Acceptance tests (all NOT TESTED)

| ID | Test |
|----|------|
| T-01 | Canonical text for the slice passage matches the PDF text exactly, apart from documented normalisation |
| T-02 | Every displayed passage shows PDF page and printed page; offset logic verified |
| T-03 | Canonical content cannot be modified by the extension or exercise layers (checksum check) |
| T-04 | Extension is visibly separate, labelled, linked to the original passage, and shows status Under review |
| T-05 | Chapter list and section navigation work; return path works |
| T-06 | Prompt Builder assembles the prompt from five fields correctly (including empty fields) |
| T-07 | Copy, edit and reset work; validation messages are specific |
| T-08 | Search returns passage-level results with context; empty-result state exists |
| T-09 | Every visible control works or is clearly disabled |
| T-10 | Keyboard-only use, visible focus, labels/roles, contrast checked against the target criteria |
| T-11 | Reduced-motion setting and reduced-effects toggle disable motion and 3D; reading and lab still work |
| T-12 | Slice runs with no network calls to AI services and no paid dependencies |
| T-13 | Storage notice is shown; reset clears all stored state |
| T-14 | Load and interaction performance measured on agreed devices; results reported as measured |
| T-15 | Layout checked at agreed mobile, tablet and desktop widths |
| T-16 | Source inventory and coverage matrix have a disposition for every section |
| T-17 | No unapproved claim appears as Verified; every extension has a claim record |
| T-18 | Dependency and licence inventory complete; no secrets in the client bundle |
| T-19 | Rollback of the content bundle to the previous version works |
| T-20 | Report language rules respected |
| T-21 | No work started beyond the approved gate |
| T-22 | Technology decision record complete for each significant choice |

---

## D7 — Risk, dependency, cost and licensing register

### D7.1 Risks

| ID | Risk | Impact | Proposed mitigation |
|----|------|--------|---------------------|
| R1 | Rights to fonts embedded in the PDF (Century Gothic, Calibri, Wingdings) and to images (cover art, author photo, chapter illustrations) are not verified | Cannot redistribute | Use open-licensed fonts; verify image provenance with the Director (Q10); do not reuse PDF-embedded fonts or images without proof |
| R2 | Figures contain text not in the text layer | Source gaps, accessibility gaps | OCR/manual transcription as a labelled added layer |
| R3 | Justified text causes line-break hyphenation in extraction | Silent corruption of wording | Documented de-hyphenation rules; sample visual comparison; exact vs normalised text kept apart |
| R4 | `###` prompt delimiters mistaken for headings | Broken structure | Treat as prompt-example content by type |
| R5 | Printed-page offset (5) assumed uniform | Wrong citations | Verified on 237 pages; automated check kept in the test suite |
| R6 | TOC differs from body (C7, C8, two section-page mismatches) | Wrong curriculum map | Reconcile in D2 audit |
| R7 | Book claims may be outdated or too general (mandate §03.6) | Misleading learners | Clarification layer with evidence and human approval; never edit L0 |
| R8 | Appendix E links and Appendix F platform descriptions go stale quickly | Misleading or dead references | Link check and compatibility-date field; review schedule |
| R9 | A static-only product cannot enforce payment or accounts | Revenue path blocked | Option C extension point; decide at G5 |
| R10 | Free tiers change | Cost surprise | Document limits and a fallback host |
| R11 | 3D hurts performance or accessibility | Poor reading experience | Lazy load, off switch, measured budgets |
| R12 | Evidence maintenance cost (ongoing human review) | Unsustainable upkeep | Cap the number of reviewed claims per release; queue-based workflow |
| R13 | Sole-author dependency for editorial approval | Release delays | Define reviewer role and fallback in D8 |
| R14 | Commander bootstrap automation not yet verified for the three lifecycle skills (C4) | Process gaps | Verify at bootstrap; fall back to manual lifecycle |
| R15 | Privacy law and consumer law (VAT, refunds, accessibility) for EU/BiH sales | Legal exposure | Review before G5; no payment code earlier |
| R16 | Prompt-injection teaching lab misused or tied to real tools | Security | Sandboxed, resettable, no real tools (mandate §06.3) |

### D7.2 Dependency register (candidates only; none installed)

| Candidate | Purpose | Licence (to be verified at install) | Cost | Notes |
|-----------|---------|--------------------------------------|------|-------|
| Next.js, React | Static site and UI | Believed MIT; verify | Free | Commander default |
| TypeScript | Type safety | Believed Apache-2.0; verify | Free | E-1 |
| Zod | Content and input validation | Believed MIT; verify | Free | E-2; note known 3.25.x pitfall in E-2 |
| Tailwind CSS, Shadcn/UI | Styling, components | Believed MIT; verify | Free | DL-011; must not edit `components/ui/` |
| three.js | Optional 3D | Believed MIT; verify | Free | Lazy loaded |
| Fonts | Typography | Open-licensed only (e.g. SIL OFL); choice pending | Free | Self-hosted, no runtime external requests |
| Vercel (preview) | Hosting | Service terms | Free tier, limits apply | Limits must be documented |
| Sentry (Commander E-8) | Error tracking | Service terms | Free tier | Telemetry must be opt-in per mandate §09; **conflicts with default install**; decision Q7 |

### D7.3 Cost

Slice: €0 expected. Not yet estimated: domain, production hosting, payment fees, VAT handling, editorial review time, support. No paid or credit-card-required service will be added without approval.

### D7.4 Commercial notes

Price points in the mandate are hypotheses. Recommendation stays: one primary paid offer first, with validation experiments after the slice. No payment code before G5.

---

## D8 — Phased roadmap and approval questions

### D8.1 Phases

| Phase | Gate | Scope | Exit criteria | Relative size |
|-------|------|-------|---------------|---------------|
| P0 | G0 (this report) | Discovery, D1–D8 | Director approves or amends plan | Done |
| P1 | After G1 | Commander bootstrap: create repo `IDSS123a/web-app-[name]`, install automation from the **v1.6.2 tag, not `main`**, `.commander-version`, project `CLAUDE.md` and `CONSTITUTION.md`, DECISION_LOG with the Step 3 deviation, `SPRINT_01.md`, push-protection check | Repo ready, no feature code, compliance check done | S |
| P2 | G2 | Source ingestion + full D2 audit: inventory, fidelity report, coverage matrix | Every section has a disposition; report accepted | M–L |
| P3 | G2 | Vertical slice per D6 | T-01 to T-22 results reported honestly; Director accepts | M |
| P4 | G3 | Reader + curriculum for all chapters, bounded mandates per chapter group | Coverage matrix complete for L0 | L |
| P5 | G3/G4 | Labs (builder, comparison, injection simulator, validator, versioning, RAG, coding, ethics) and knowledge-governance workflow (claim records, review, releases, rollback) | Features pass tests; rollback tested | L |
| P6 | G5 | Commercial readiness: licences, privacy, accessibility audit, performance, payment decision, release | Definition of done (mandate §17) satisfied; Director approves release | L |

Effort in hours or weeks is **not** estimated; it cannot be responsibly estimated before the D2 audit shows how much transcription work is needed.

### D8.2 Commander integration after approval

Tier 3 load already done for this report; after bootstrap return to M-21 tier rules. Use KRAJ (M-22) at project end, lessons capture per M-18 (`corrections/SPRINT_XX_LESSONS.md`), DONE_CHECKLIST with N/A rationale for server-only items (C6), and handoff notes per M-9.

### D8.3 Decisions needed from the Director (each with recommended answer)

| # | Decision | Recommendation |
|---|----------|----------------|
| Q1 | Confirm project name `web-app-mastering-prompt-engineering`, mode **FULL**, no existing codebase | Yes |
| Q2 | Approve Option C architecture (static-first now, server later) | Yes |
| Q3 | Is a standalone offline single-file distribution a requirement? | Not for the slice; decide at G3 |
| Q4 | Framework: Next.js static export vs Vite + React | Next.js static export |
| Q5 | Slice chapter: Chapter 2 | Yes |
| Q6 | Include one minimal lazy 3D element in the slice | Yes, with off switch |
| Q7 | Telemetry/Sentry: opt-in only, or none in the slice | None in the slice |
| Q8 | Support matrix: current Chrome, Edge, Firefox, Safari on desktop; one iOS and one Android width | Approve list |
| Q9 | Does an editable original Word source exist for cleaner text extraction? | Provide if available |
| Q10 | Provenance of cover art, chapter illustrations and author photo | Provide proof or approve replacement |

---

## Mandatory report (mandate §15)

1. **Mandate:** Section 12, D1–D8 only.
2. **Outcome:** Completed (discovery and plan). Full-document audit not done; see D2.2.
3. **Files inspected:** the source PDF (D1.1), `initial_instructions.md`, seven Commander documents (D1.2), the mandate text (inline).
4. **Files changed:** none in any project. This report is the only file produced.
5. **Requirements traceability:** D4. All planned, none implemented.
6. **Tests:** none run; all T-IDs **NOT TESTED**. Inspection commands executed: `pdfinfo`, `pdffonts`, `pdfimages -list`, `pdfdetach -list`, `pdftotext`, pypdf outline/labels, `pdftoppm` (3 pages viewed).
7. **Source and evidence:** the supplied PDF and Commander documents only. No external research sources reviewed or cited yet.
8. **Security, accessibility, performance:** none tested; risks in D7.
9. **Deviations:** none from the mandate. Commander Step 3 was deferred as the mandate requires.
10. **Open issues:** C1–C8, Q1–Q10, unverified items listed in D2.1.
11. **Rollback:** not applicable (no changes).
12. **Next proposed mandate:** P1 Commander bootstrap, then P2 source ingestion; acceptance criteria as in D8.1.
13. **Approval request:** approve, amend or reject this plan and the decisions Q1–Q10.
