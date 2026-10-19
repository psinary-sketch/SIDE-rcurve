/-
  SIDE-rcurve · Criterion.lean
  ============================

  Compiles elementary lemmas used by the R-curve criterion -- a strictly
  monotone real function vanishes at most once, alpha^2/beta + beta =
  (alpha^2 + beta^2)/beta, Re((alpha + beta i)/(V i)) = beta/V, n/beta > 0
  for positive n and beta, and a defined codimension count; neither
  RH <-> monotonicity nor Re(xi'/xi) > 0 is stated here, and the SIDE
  closure it rests on (catalogue exhaustiveness, Conservation) is the
  open clause.

  Source: R_CURVE_CRITERION_v0_1; P22_PHASE66_SIDE_CLOSURE;
  P22_RCURVE_MONOTONICITY_REVISED.
-/

import Mathlib

namespace SIDERCurve

/-! ## T1 — the engine: strict monotonicity ⟹ at most one zero

The elementary half of the (ii) => (i) step: a strictly monotone V is
injective, so it vanishes at most once. -/

theorem monotone_unique_zero {V : ℝ → ℝ} (hV : StrictMono V) {a b : ℝ}
    (ha : V a = 0) (hb : V b = 0) : a = b :=
  hV.injective (ha.trans hb.symm)

/-! ## T2 — the Monotonicity Formula shape  V′ = |ξ′|²/β -/

theorem monotonicity_formula (α β : ℝ) (hβ : β ≠ 0) :
    α ^ 2 / β + β = (α ^ 2 + β ^ 2) / β := by
  field_simp
/-! ## T3 — the Beta–V identity  Re(ξ′/ξ) = β/V on the curve (ξ = iV) -/

theorem beta_V_re (α β V : ℝ) (hV : V ≠ 0) :
    ((↑α + ↑β * Complex.I) / (↑V * Complex.I)).re = β / V := by
  simp only [Complex.div_re, Complex.normSq_mul, Complex.normSq_I,
    Complex.normSq_ofReal, Complex.add_re, Complex.add_im, Complex.mul_re,
    Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im, Complex.I_re, Complex.I_im]
  field_simp
  ring

/-! ## T4 — Singular Repulsion: positive numerator over positive β gives V′ > 0 -/

theorem singular_repulsion (n β : ℝ) (hn : 0 < n) (hβ : 0 < β) : 0 < n / β :=
  div_pos hn hβ

/-! ## T5 — codimension of the zero condition

On-line zero: V = 0 (codim 1). Off-line zero: V = 0 ∧ β = 0
simultaneously (codim 2). -/

def zero_codim (onLine : Bool) : ℕ := if onLine then 1 else 2

theorem online_zero_codim_one : zero_codim true = 1 := rfl

theorem offline_zero_codim_two : zero_codim false = 2 := rfl

/-! ## T6 — the headline: a second zero contradicts monotonicity

An off-line zero would force V = 0 a second time on the R-curve;
strict monotonicity forbids it. -/

theorem second_zero_breaks_monotone {V : ℝ → ℝ} (hV : StrictMono V)
    {e x : ℝ} (he : V e = 0) (hx : V x = 0) (hne : x ≠ e) : False :=
  hne (hV.injective (hx.trans he.symm))

end SIDERCurve