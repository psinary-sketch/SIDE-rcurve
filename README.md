# SIDE-rcurve

Lean 4 kernel — the R-Curve **equivalence engine**, checkpoint 1.2-D.

J. York Seale — https://orcid.org/0009-0008-7993-0310

## What it proves

Verifies the structural/logical core of the **proven** Equivalence Chain (R_CURVE_CRITERION_v0_1, consolidating P22 Phases 1-66): RH iff V strictly monotone on every R-curve in {sigma > 1/2}.

- `monotone_unique_zero` / `second_zero_breaks_monotone` — the decisive (ii) implies (i) step: a strictly monotone V has at most one zero, so a second (off-line) zero is impossible.
- `monotonicity_formula` — the Monotonicity Formula shape V' = |xi'|^2 / beta = (alpha^2 + beta^2)/beta.
- `beta_V_re` — the Beta-V identity Re(xi'/xi) = beta/V on the curve (xi = iV).
- `singular_repulsion` — positive numerator over positive beta gives positive V': the R-curve is repelled from V = 0.
- `online_zero_codim_one` / `offline_zero_codim_two` — an on-line zero is codimension 1 (V = 0); an off-line zero needs V = 0 and beta = 0 simultaneously, codimension 2.

## Closure status (not an open margin)

The positivity Re(xi'/xi) > 0 that drives the monotonicity is **closed**, not a reach. The Effective Dominance Theorem (Phase-66 SIDE closure) excludes off-line zeros from the seven-class catalogue, sealed by Conservation of Spectra, so every Hadamard term is positive. The route shares its bottom step (off-line-zero exclusion) with the deposited SIDE proof (Zenodo 10.5281/zenodo.19938917): this kernel verifies the equivalence machinery; the deposited proof supplies the exclusion. The Feb-2026 "~1% landscape margin" framing is superseded.

## What it does NOT do

It does not re-verify the analytic Hadamard-anatomy positivity in Lean (that is the deposited proof's mechanism enumeration). It verifies the geometry-to-logic engine that connects RH to the geometric criterion.

## Federation context

Checkpoint 1.2-D in the alternative-proof-paths census (`PATHS_TO_THE_CRITICAL_LINE`), filed within the Phase 1.5 wave. Independent federated kernel: own toolchain pin, own Mathlib pin, own deposit. Mathlib-dependent (pinned v4.29.1, reusing the federation cache).

## Build

lake exe cache get
lake build
lake env lean AxiomCheck.lean

Toolchain leanprover/lean4:v4.29.1; Mathlib pinned v4.29.1.

## License

MIT.

## AI disclosure

*Computational workflow assisted by various LLM instances. Mathematical content, proof strategies, and editorial decisions are the author's.*