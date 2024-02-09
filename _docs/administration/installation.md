---
title: Installation Instructions Documentation
description: This documentation is designed to guide an administrator on installing any of the TripalCultivate modules.
---
# Installation Instructions

### Requirements
- Drupal
- Tripal 4.x
- PostgreSQL
- PHP
- Apache2

### TripalCultivate Germplasm
Using composer, add this package to your Drupal site by using the following command in the root of your Drupal site:

`composer require tripalcultivate/germplasm`

This will download the most recent release in the modules directory. You can see more information in the Drupal Docs.

Then you can install it using Drush or the Extensions page on your Drupal site.

`drush en trpcultivate_germplasm`

### TripalCultivate Phenotypes (optional)
The [TripalCultivate Germplasm](installation#tripalcultivate-germplasm) module must be enabled and configured prior to installing Phenotypes.

Using composer, add this package to your Drupal site by using the following command in the root of your Drupal site:

`composer require tripalcultivate/phenotypes`

This will download the most recent release in the modules directory. You can see more information in the Drupal Docs.

Then you can install it using Drush or the Extensions page on your Drupal site.

`drush en trpcultivate_phenotypes`

Enable Tripal Cultivate Phenotypes child modules - trpcultivate_phenocollect and trpcultivate_phenoshare:

`drush en trpcultivate_phenocollect` 

`drush en trpcultivate_phenoshare`  

Installing this module via Composer is strongly advised; however, if you don't have access to the command line try [manual install](installation#tripalcultivate-phenotypes-manual-install).


### TripalCultivate Genetics (optional)
The [TripalCultivate Germplasm](installation#tripalcultivate-germplasm) module must be enabled and configured prior to installing Genetics.

Using composer, add this package to your Drupal site by using the following command in the root of your Drupal site:

`composer require tripalcultivate/genetics`

This will download the most recent release in the modules directory. You can see more information in the Drupal Docs.

Then you can install it using Drush or the Extensions page on your Drupal site.

`drush en trpcultivate_genetics`
