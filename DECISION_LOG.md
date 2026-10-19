# DECISION_LOG.md — Mastering Prompt Engineering — The Interactive Edition
# Project decisions. Never deleted; overridden entries are marked [SUPERSEDED].

## MPE-DL-001 — Commander Step 3 auto-scaffold deferred until plan approval
**Date:** 2026-10-19 · **Decision owner:** Director
Mandate §01.1 and §13.2 forbid automatic scaffolding before D1–D8 approval. Plan approved 2026-10-19. This bootstrap (P1) creates governance files only; no application stack was initialised.

## MPE-DL-002 — Architecture: static-first now, server later (Option C)
**Date:** 2026-10-19 · **Decision owner:** Director (approved the recommended plan)
Static, local-first core. Server services (accounts, payment, sync) only when validated, via a documented extension point. Deviation from the Commander default stack (Next.js + Supabase + Vercel) per M-16; Commander patterns are translated, not "fixed". Reversible while content is stored as plain structured files.

## MPE-DL-003 — Framework: Next.js static export
**Date:** 2026-10-19 · Keeps the Commander default framework and a later server path. Server Actions are unavailable in static export; revisit at G3/G5. Alternative considered: Vite + React.

## MPE-DL-004 — Content store: structured files with Zod schema and checksum manifest
Immutable canonical layer (L0) separate from L1–L3. Stable IDs per D3 in `docs/planning/D1-D8_discovery_plan.md`.

## MPE-DL-005 — Source PDF tracked in the repository [SUPERSEDED by MPE-DL-010]
The canonical source PDF and its SHA-256 are committed under `source/`. The repository must be private. The Director states he is the sole author and owner of the book. Fonts and images embedded in the PDF are not assumed redistributable; the product uses open-licensed fonts, and an asset manifest records the origin of every image.

## MPE-DL-006 — Vertical slice scope
Chapter 2 (Five Pillars), PDF pages 15–29 (printed 10–24). One minimal lazy-loaded 3D element with an off switch is included in the slice.

## MPE-DL-007 — Telemetry and error tracking
None in the slice. Any telemetry later is opt-in and disclosed (mandate §09). Commander E-8 (Sentry from project start) is therefore deferred for this project.

## MPE-DL-008 — Support matrix (proposed, approved with the plan)
Current desktop Chrome, Edge, Firefox, Safari; one iOS and one Android narrow width. Universal support is not claimed.

## MPE-DL-009 — Ingestion tooling requires approval
poppler, pypdf, pdfplumber and OCR tools are candidates for P2. Each needs Director approval and an entry here before use in the repository (M-12).

## MPE-DL-010 — Sole canonical source: Manual_Prompt_Engineering_19102026_KOREKCIJE.docx
**Date:** 2026-10-19 · **Decision owner:** Director (explicit order)
The Director supplied the corrected, latest edition as a Word file and ordered that only this version is used. The earlier PDF (SHA-256 889a454f…) is superseded, excluded from the repository, and its page offset (printed = PDF − 5) must not be applied to this edition. The DOCX is tracked in `source/` (private repository) with its SHA-256. The mandate text speaks of "the source PDF"; for this project it is read as "this DOCX" (Director's decision). PDF page index and printed page label are filled only from a PDF exported from this same DOCX; without it, traceability uses section path and stable ID, which is a deviation from mandate §03.1 and needs the Director's confirmation.
