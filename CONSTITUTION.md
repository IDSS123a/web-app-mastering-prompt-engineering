# CONSTITUTION.md — Mastering Prompt Engineering — The Interactive Edition
# Project Constitution — Commander v1.6.2
# Created: 2026-10-19

## Identity
- **Project:** Mastering Prompt Engineering — The Interactive Edition (repo: web-app-mastering-prompt-engineering)
- **Director and sole author:** Davor Mulalić (stated by the Director: sole author, owner of the book)
- **Idea:** a premium, evidence-verified interactive web edition of the book "Mastering Prompt Engineering": a source-faithful reader, a prompt laboratory, a traceable knowledge layer, and a commercially maintainable learning product.
- **Mode:** FULL (phased, gated).
- **Positioning (working, not an accuracy claim):** "A living, evidence-verified learning environment that turns prompt engineering principles into practical engineering skills."

## Precedence
1. Safety, security, legal, privacy, platform constraints.
2. This Constitution and the Director's ACA Master Mandate v1.0 (`docs/mandate/`).
3. Commander documents (mandate overrides Commander default automation where it says so).
4. The supplied source DOCX and verified assets (for source-derived content).
5. Director-approved phase mandates and sprint documents.
6. ACA recommendations within approved scope.

Conflicts are never resolved silently: state the conflict, recommend, ask when product behaviour, cost, security, source fidelity, scope or gates are affected (M-4).

## Business rules (from the mandate — do not extend without the Director)
1. The source DOCX `Manual_Prompt_Engineering_19102026_KOREKCIJE.docx` is canonical; no other edition of the book is used (Director's order, 2026-10-19). Original text, order and wording are preserved. No silent rewrite, deletion, reordering or summarising.
2. Content layers: L0 canonical; L1 clarification/correction/qualification; L2 extension/new topic; L3 activity. Each layer separate, versioned, labelled, with provenance and review status.
3. Core reading and local exercises work without paid AI API calls. Live AI is optional, isolated, disclosed, consented, off by default.
4. Evidence-aware updates: automation may discover and prepare; only a human editor may approve. Statuses: Verified, Under review, Rejected, Superseded. Automation never promotes a claim to Verified or alters L0.
5. No invented citations, quotes, page numbers, metadata, test results or source contents.
6. Honest labelling: fixed example, deterministic local result, live model result and simulation are always distinguished.
7. Accessibility target: WCAG 2.2 AA where applicable; claim conformance only after testing. 3D and effects are progressive enhancements with a reduced-effects mode.
8. Privacy: data minimisation; local progress storage disclosed and resettable; no personal data unless a defined feature needs it; no learner data used for training.
9. No paid, trial-only, credit-card-required or usage-limited services without explicit approval. No secrets in client code.
10. Marketing integrity: never claim hallucination-proof, infallible, guaranteed or automatically up to date.
11. Commercial release decisions (price, payment, VAT, licence terms) are hypotheses until validated; no payment code before G5.
12. Language: Bosnian with the Director; English for all deliverables.

## Stack (M-16 deviation — see DECISION_LOG.md MPE-DL-002/003)
Static-first, local-first, TypeScript strict, Zod for content and exercise schemas. Framework: Next.js static export (approved recommendation). No Supabase, accounts, payment, live AI or telemetry in the slice. Commander patterns (A-1 Five Layers, A-3 Repository, etc.) are translated to this stack; server-only DONE_CHECKLIST items are marked N/A with rationale.

## Gates
G0 discovery (done) → G1 plan (approved 2026-10-19) → G2 vertical slice → G3 full product → G4 knowledge governance → G5 commercial release. Approval must be explicit and attributable to the Director.

## Never without explicit approval
Change vision, architecture, commercial model or update entitlement; modify or remove canonical content; add services, telemetry or accounts; publish authoritative knowledge; deploy or process payments; force-push or rewrite history (M-23); claim anything verified that was not tested.

## Open items
- Q3: standalone offline single-file distribution — decide at G3.
- Q9 resolved: the editable Word source is supplied and is the sole source.
- Page mapping: Director to export a PDF from this same DOCX if PDF page index / printed page labels are wanted (MPE-DL-010).
- Mandate copy must be placed in `docs/mandate/`.
- Asset manifest: list the origin of every image and font used (fonts embedded in the PDF are not assumed redistributable).
