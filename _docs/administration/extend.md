---
title: Extending Core Functionality
description: This documentation is designed to guide an administrator/developer on how to extend core functionality provided by the Tripal Cultivate package.
---
# Extending Core Functionality

This section of the documentation is designed to provide detailed developer information for core functionality provided by Tripal Cultivate. The intent is to guide administrators and developers on how to extend this functionality through development of extension modules and how to troubleshoot any issues they may come across.

It is assumed that you have a general understand of Drupal and Tripal when approaching this documentation. We will try to link to pertinent background documentation but when in doubt, consult the [Tripal documentation](https://tripaldoc.readthedocs.io/en/latest/dev_guide.html).

## [Validators](validators)
When importing data using TripalCultivate importers you will see detailed file validation feedback. This is provided by validator plugins and their interaction with Tripal's Importer API.
