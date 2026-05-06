# Review Journal

The repository goal stays the same: create a Haskell reference implementation for eval workflows, centered on state machine modeling, transition tables, and invalid-transition tests. This note explains the added review angle.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its ml utilities focus without claiming live deployment or external usage.

## Cases

- `baseline`: `feature drift`, score 91, lane `hold`
- `stress`: `window width`, score 132, lane `watch`
- `edge`: `metric stability`, score 167, lane `ship`
- `recovery`: `explainability`, score 169, lane `ship`
- `stale`: `feature drift`, score 184, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
