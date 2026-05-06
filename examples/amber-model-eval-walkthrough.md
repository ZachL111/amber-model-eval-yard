# Amber Model Eval Yard Walkthrough

I use this file as a small checklist before changing the Haskell implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | feature drift | 91 | hold |
| stress | window width | 132 | watch |
| edge | metric stability | 167 | ship |
| recovery | explainability | 169 | ship |
| stale | feature drift | 184 | ship |

Start with `stale` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around window width and explainability.
