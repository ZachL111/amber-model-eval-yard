# amber-model-eval-yard

`amber-model-eval-yard` packages a practical ml utilities exercise in Haskell. The emphasis is on deterministic behavior, a small public API, and examples that explain the tradeoffs.

## How I Read Amber Model Eval Yard

The useful thing to inspect here is how the same score rule is represented in code, metadata, and examples. If those three pieces disagree, the audit script should make the drift visible.

## Problem Shape

This project keeps the domain idea close to the tests. That makes it useful as a reference implementation, a small experiment, or a starting point for a more specialized tool.

## Main Behaviors

- Models feature signals with deterministic scoring and explicit review decisions.
- Uses fixture data to keep metric checks changes visible in code review.
- Includes extended examples for windowed behavior, including `recovery` and `degraded`.
- Documents explainable outputs tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.

## Internal Model

The design is intentionally direct: parse or construct a signal, score it, classify it, and verify the expected branch. This makes the repository useful for studying ml utilities behavior without needing a service or database unless the language project itself is SQL. The Haskell code keeps the pure scoring function isolated so tests can check it without setup.

## Repository Map

- `src`: primary implementation
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Run It Locally

The only required setup is the local Haskell toolchain. After cloning, stay in the repo root so fixture paths resolve correctly.

## How To Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Validation

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Scenario Walkthrough

`examples/extended_cases.csv` adds six named cases. I kept the names plain so failures are easy to read in a terminal: baseline, pressure, surge, degraded, recovery, and boundary.

## Known Edges

The fixture set is deliberately small. That keeps the review surface clear, but it also means the model should not be treated as a complete domain simulator.

## Follow-Up Work

- Add a short report command that prints the score breakdown for a single scenario.
- Add malformed input fixtures so the failure path is as visible as the happy path.
- Split the scoring constants into a typed configuration object and validate it before use.
- Add one more ml utilities fixture that focuses on a malformed or borderline input.
