# Instructions for maintaining/creating our documentation

These docs are generated using the Docsy Jekyll Theme whose documentation is: https://vsoch.github.io/docsy-jekyll/.

## Summary

New Documentation pages are created in the `docs` directory and have a Markdown format (i.e. file ending should be `.md`) with Jekyll front matter at the top such as:

```
---
title: Short but informative title
description: One sentence describing the purpose of this page. This is not displayed on the page but in listings, etc.
---
```

The URL is generated based on the folder and file names so make sure to nest your docs the same way you intend to setup the navigation.

Name your files using dashes (`-`) not underscored (`_`) for better URLs.

Navigation is setup in `_data/toc.yml`.

For complete details see https://vsoch.github.io/docsy-jekyll/docs/getting-started
