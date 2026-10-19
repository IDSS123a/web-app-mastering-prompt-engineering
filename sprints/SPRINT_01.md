# SPRINT_01 — Source ingestion and fidelity audit (phase P2)

**Status: NOT STARTED — requires the Director's explicit approval to begin (gate G2).**
**Mode:** FULL. **Replaces** the default Commander Sprint 01 "skeleton + data model + auth" (not applicable: static-first, no accounts).

## Goal
Turn the source PDF into a verified, traceable canonical inventory and a source-fidelity report.

## IN scope
1. Ingest the DOCX structure (Heading 1 / Heading 2, tables, lists, footnotes, 12 embedded images). If the Director supplies a PDF exported from this DOCX, rasterise and compare pages against extracted text: front matter, all figure pages, prompt examples, plus a documented statistical sample.
2. Alt-text or transcription of raster figures (OCR only where needed), stored as a labelled **added** layer.
3. Documented, deterministic normalisation (de-hyphenation, header/footer removal, quotes, bullets). Exact text and search text stored separately.
4. Inspect the PDF tag structure as an optional aid.
5. Reconcile: Chapter 8 "ethical audit workshop" (C7), Chapter 6 RAG content (C8), TOC mismatches for "Few-Shot Learning" and "Structuring Output with Tags".
6. Deliver: source inventory, coverage matrix (one disposition per section), source-fidelity report with remediation proposals.

## OUT of scope
App scaffolding, the vertical slice, UI, 3D, live AI, accounts, payment, deployment, any edit to canonical wording.

## Acceptance
Test T-16 (every section has a disposition) and T-01/T-02 groundwork; every result reported as PASS / FAIL / BLOCKED / NOT TESTED.

## Handoff note (fill at close)
Completed: — · Not completed: — · Open risks: — · Technical debt: — · Next sprint: P3 vertical slice (needs G2 approval)

## Commander compliance (fill at close)
Rules followed without reminder: ___/___ · Violated, caught by ACA: ___ · Violated, caught by Director: ___ · Slowed work: — · New rules suggested: —
