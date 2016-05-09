# AxiomAbsolute blog and site

Blog and personal website set up using Hugo.  The "public" directory is a git subtree that maps to the `gh-pages` branch, which is picked up by GitHub pages.

## Setup and Install

1. Download Hugo
2. Place binary on path, renaming to `hugo`
3. (Optional) Install Pygments (recommended: use the Anaconda python distribution on Windows, it has nice prebuilt binaries)

## Running

Run with custom theme
`hugo server --watch --theme=axiom --buildDrafts`

## Deploying

Run the `deploy.ps1` PowerShell script
