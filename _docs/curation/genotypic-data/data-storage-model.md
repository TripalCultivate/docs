---
title: Data Storage Model
tags:
  - genotype
  - data storage
  - importers
description: This is documentation pertaining to how genotypic data are stored in the Chado database.
---
## Data Storage Model for Genotypic Data

### Genotypic Data Import
Genotypic data and their associated metadata are stored in the chado tables `genotype`, `stock`, `project`, `feature`, and in the custom table `genotype_call`, which is created when this module is installed. This table provides a centralized, relational table which pulls all the information for a given genotypic call (marker assay result on a given germplasm for a specific project) together in a single record. It also supports flexible storage for all meta-data associated with a genotype assay result through a PostgreSQL JSONB metadata column. We went with this backwards-compatible approach to make supporting large genotypic datasets more efficient than Chado alone. We go into greater depth and our reasons for this approach in the following journal article:

>Lacey-Anne Sanderson, Carolyn T Caron, Reynold L Tan, Kirstin E Bett, A PostgreSQL Tripal solution for large-scale genotypic and phenotypic data, Database, Volume 2021, 2021, baab051, https://doi.org/10.1093/database/baab051

The following entity–relationship diagram describes the relevant sections of the Chado schema for storage of genotypic data. The `genotype_call` table (highlighted in orange) is a backward-compatible enhancement to the Chado schema, whereas all the supporting tables match the generic Chado specification. This table gathers together all the metadata for a genotypic data point into a single record through the use of foreign keys.

![genotype_call_er](https://github.com/TripalCultivate/docs/assets/7927760/170c6af1-e257-417f-b508-ab65562e7399)
