---
title: Germplasm Data
tags:
  - germplasm
description: This is documentation pertaining to curation, file upload and management of germplasm data within TripalCultivate.
---
# Germplasm Data
This module package enhances germplasm support in Tripal Core with support for both **Breeding Programs** and **Germplasm Genebanks**. Germplasm importers are designed to accommodate all of the metadata required to meet the [Breeding API (BrAPI)](https://brapi.org) standards.

** *Placeholder for Lacey, who will give an idea of the breeder workflow and why there are different importers* **

## [Germplasm Accessions](germplasm-data/germplasm-accessions-importer.md)
The Germplasm Accessions Importer is used for specific germplasm samples which are often maintained by genebanks. These accessions often serve as the seed source for various experiments and may also be used as parents in breeding crosses. Genebanks will generally maintain public passport data on these accessions, which is captured by this importer with the Genebank being specified as the "External Database". In addition to these passport data, this importer optionally collects BrAPI-suggested information such as breeding institution, breeding method, pedigree and synonyms where they are available and applicable.

## [Germplasm Crosses](germplasm-data/germplasm-crosses-importer.md)

## [Germplasm Collections](germplasm-data/germplasm-collections-importer.md)
