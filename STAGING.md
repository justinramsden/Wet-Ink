# Wet Ink — public vs staging

- **Public (stable):** `main` branch root → https://justinramsden.github.io/Wet-Ink/
- **Staging (just me):** `dev` branch → https://justinramsden.github.io/Wet-Ink/dev-msusiuzy/
  - Rebuilt automatically on every push to `dev` (see `.github/workflows/stage.yml`).
  - Shows an orange **DEV** badge, is marked noindex, and uses separate save keys
    (`wetinkdev_*`) so experiments never touch real scores or trophies.
  - Reachable by anyone who has the URL — just don't share it.

## Workflow
1. All changes land on `dev` first.
2. Play the staging URL on PC and phone. Check it's working and workplace-friendly.
3. Promote: `git checkout main && git merge dev && git push` — public site updates in ~1 min.
4. If the public site breaks: `git revert HEAD && git push` on `main`.
