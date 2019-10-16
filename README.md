# Tag Release Github Action

This action was inspired by this post:  https://itnext.io/creating-a-github-action-to-tag-commits-2722f1560dec

# Work in Progress
We should change this to

  - [ ] Package `bosun`
  - [ ] Use `bosun` commands

# Usage

```dockerfile
name: Bump version
on:
  push:
    branches:
      - master
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: Bump version and push tag
      uses: naveego/action-tag-release@master
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        REPO_OWNER: naveegoinc
```