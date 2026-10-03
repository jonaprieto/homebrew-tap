# homebrew-tap

[![ci](https://github.com/jonaprieto/homebrew-tap/actions/workflows/ci.yml/badge.svg)](https://github.com/jonaprieto/homebrew-tap/actions/workflows/ci.yml)
[![sync](https://github.com/jonaprieto/homebrew-tap/actions/workflows/sync.yml/badge.svg)](https://github.com/jonaprieto/homebrew-tap/actions/workflows/sync.yml)

One Homebrew tap for the tools I write.

```sh
brew tap jonaprieto/tap
brew trust --formula jonaprieto/tap/folio   # third-party taps need it, once per formula
brew install jonaprieto/tap/folio
```

| tool | what it is | install |
|---|---|---|
| [edgemark](https://github.com/jonaprieto/EdgeMark) | Side-panel Markdown notes app with GitHub and gist sync (my fork of EdgeMark) | `brew install --cask jonaprieto/tap/edgemark` |
| [folio](https://github.com/jonaprieto/folio) | Find and download books and papers from the terminal or an AI agent | `brew install jonaprieto/tap/folio` |
| [granpa](https://github.com/jonaprieto/granpa) | Book Gran Pared climbing slots from the shell | `brew install jonaprieto/tap/granpa` |
| [oatp](https://github.com/jonaprieto/oatp) | Lean 4 ATP orchestration and TPTP tooling | `brew install jonaprieto/tap/oatp` |
| [papershelf](https://github.com/jonaprieto/papershelf) | macOS PDF reader and research library | `brew install --cask jonaprieto/tap/papershelf` |
| [xan-watch](https://github.com/jonaprieto/xan-watch) | XAN price and vesting position in the macOS menu bar | `brew install jonaprieto/tap/xan-watch` |
| [zkit](https://github.com/jonaprieto/zkit) | Numbered directory listing with sizes, ages and git status for zsh | `brew install jonaprieto/tap/zkit` |

## How it stays current

Each formula lives in its tool's repo, where that repo's CI installs and tests it. The papershelf cask lives in [homebrew-papershelf](https://github.com/jonaprieto/homebrew-papershelf), which papershelf's release workflow updates. This tap copies them: [`sources`](sources) lists what comes from where, and [`sync`](sync) fetches each file. The sync workflow runs daily, on demand, and whenever `sources` changes, and commits only the files that differ.

So a formula change goes to the tool's repo, never here. Adding a tool means one line in `sources`.

The per-repo taps keep working, for example `brew tap jonaprieto/folio https://github.com/jonaprieto/folio`.
