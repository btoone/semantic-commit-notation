# Semantic Commit Notation

This repository contains the definition of a notation that can be used for
making meaningful commits to a document-based project.

## Read the Notation

[semantic_commit_notation.md](semantic_commit_notation.md)

## Versioning Policy

This project follows [Semantic Versioning](https://semver.org/).

- **MAJOR (v1.x.x)**: Fundamental changes to values or principles
- **MINOR (v0.x.x)**: Adjustments or additions to meaning or structure
- **PATCH (v0.10.x)**: Grammar, formatting, tooling, and consistency edits

## Tooling

You can include this repo's shared alias definitions in your own project so that
everyone on your team can use the same `git lh` and `git heat` commands.

- Copy this repo's tools into your own project
- Include it into your repo's local git config

```shell
cp tools/git/scn-aliases.ini ../your-project/tools/git
cd ../your-project
git config --local include.path ../tools/git/scn-aliases.ini

# Test new aliases
git lh
git heat
```

## Commit Template

Use this commit template in your project as an easy way to help make consistent
commit messages for all contributors.

1. Copy the commit template into the root of your project.
2. Configure Git to point at the template file, making sure it's
   project-specific.
3. Run `git commit` and the template will preload, ready for you to fill in the
   symbol, scope, and summary.

```sh
cp templates/commit-template.txt ../your-project/.gitmessage.txt
cd ../your-project
git config commit.template .gitmessage.txt
```
