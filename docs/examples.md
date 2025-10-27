# Example Commit Messages by Symbol

**Format**

```none
<symbol> <scope>: <summary>
```

## Cosmetic (`.`)

> Very minor edits that do not alter meaning — safe to ignore in reviews.

```gitcommit
. styleguide: fix heading capitalization
. contributing: remove extra blank lines
. license: update copyright year
. overview: fix markdown link syntax
. changelog: align bullet indentation
```

---

## **Refinement (`~`)**

> Small clarity or tone improvements — phrasing, flow, or readability.

```gitcommit
~ introduction: simplify first paragraph for readability
~ overview: clarify difference between concept and principle
~ faq: rephrase common question for better tone
~ purpose: tighten wording around goals section
~ summary: improve sentence rhythm without changing meaning
```

---

## **Revision (`!`)**

> Moderate meaning changes — rewording arguments, reframing sections.

```gitcommit
! principles: rewrite explanation of transparency for accuracy
! process: adjust section to emphasize feedback loops
! ethics: shift focus from compliance to trust
! appendix: remove outdated example and replace with current one
! definitions: redefine "component" for consistency across doc
```

---

## **Expansion (`+`)**

> Major structural or conceptual changes — new sections or merged ideas.

```gitcommit
+ glossary: add key terms section for easier reference
+ appendix: include rationale for design decisions
+ examples: add illustrative use-case diagrams
+ concepts: merge duplication with overview for better flow
+ structure: introduce new section on lifecycle phases
```

---

## **Meta / Infrastructure (`^`)**

> Changes to automation, configuration, or supporting scripts.

```gitcommit
^ lint: add markdown link-checker to CI
^ infra: update makefile with new build target
^ meta: improve contributor onboarding guide
^ release: automate version tagging
^ tooling: add pre-commit hook for trailing spaces
```

---

## **Release (`*`)**

> Milestone commits marking coherent publication states.

```gitcommit
* v0.3.0 – Add glossary and update definitions
* v0.2.0 – Rewrite ethics section for accuracy
* v0.1.0 – Initial public draft
```
