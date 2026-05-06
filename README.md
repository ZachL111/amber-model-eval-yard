# amber-model-eval-yard

`amber-model-eval-yard` keeps a focused Haskell implementation around ml utilities. The project goal is to create a Haskell reference implementation for eval workflows, centered on state machine modeling, transition tables, and invalid-transition tests.

## Reason For The Project

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how feature drift and metric stability should influence a review result.

## Amber Model Eval Yard Review Notes

Start with `feature drift` and `feature drift`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## What It Does

- `fixtures/domain_review.csv` adds cases for feature drift and window width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/amber-model-eval-walkthrough.md` walks through the case spread.
- The Haskell code includes a review path for `feature drift` and `feature drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## How It Is Put Together

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `feature drift`, `window width`, `metric stability`, and `explainability`.

The Haskell addition stays small enough to inspect in one sitting.

## Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Check It

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Boundaries

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
