# SIDE-rcurve

SIDE-rcurve compiles, over Mathlib, statements about real functions and real and complex algebra. A strictly monotone V : ℝ → ℝ vanishes at most once (monotone_unique_zero, second_zero_breaks_monotone); α²/β + β = (α² + β²)/β for β ≠ 0 (monotonicity_formula); Re((α + βi)/(Vi)) = β/V for V ≠ 0 (beta_V_re); n/β > 0 for n, β > 0 (singular_repulsion); and a function defined as 1 or 2 by a Boolean (zero_codim). Its headline statement, at v0.1.0 = d5f33b4:

    theorem monotone_unique_zero {V : ℝ → ℝ} (hV : StrictMono V) {a b : ℝ} (ha : V a = 0) (hb : V b = 0) : a = b

The R-curve criterion (RH iff V strictly monotone on every R-curve in σ > 1/2), its equivalence and the positivity that drives it are the documents' (R_CURVE_CRITERION_v0_1 and the deposited proof); the kernel compiles none of them. It checks the one-zero lemma and the algebraic identities the criterion uses.

J. York Seale — https://orcid.org/0009-0008-7993-0310

## What it proves

- `beta_V_re` — the Beta-V identity Re(xi'/xi) = beta/V on the curve (xi = iV).

## Closure status (not an open margin)

The positivity Re(xi'/xi) > 0 that drives the monotonicity is **closed**, not a reach. The Effective Dominance Theorem (Phase-66 SIDE closure) excludes off-line zeros from the seven-class catalogue, sealed by Conservation of Spectra, so every Hadamard term is positive. The Feb-2026 "~1% landscape margin" framing is superseded.

## What it does NOT do

It does not re-verify the analytic Hadamard-anatomy positivity in Lean (that is the deposited proof's mechanism enumeration).

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