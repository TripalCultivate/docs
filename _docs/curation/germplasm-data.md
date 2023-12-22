---
title: Germplasm Data
tags:
  - germplasm
description: This is documentation pertaining to curation, file upload and management of germplasm data within TripalCultivate.
---
# Germplasm Data
This module package enhances germplasm support in Tripal Core with support for both **Breeding Programs** and **Germplasm Genebanks**. Germplasm importers are designed to accommodate all of the metadata required to meet the [Breeding API (BrAPI)](https://brapi.org) standards.

** *Placeholder for Lacey, who will give an idea of the breeder workflow and why there are different importers* **

## [Germplasm Accessions](germplasm-data/germplasm-accessions-importer)
The Germplasm Accessions Importer is used for specific germplasm samples which are often maintained by genebanks. These accessions often serve as the seed source for various experiments and may also be used as parents in breeding crosses. Genebanks will generally maintain public passport data on these accessions, which is captured by this importer with the Genebank being specified as the "External Database". In addition to these passport data, this importer optionally collects BrAPI-suggested information such as breeding institution, breeding method, pedigree and synonyms where they are available and applicable.

## [Germplasm Crosses](germplasm-data/germplasm-crosses-importer)
The Germplasm Crosses Importer is used for germplasm samples that are developed during the breeding process, which aims to develop new varieties and cultivars. This importer will capture the parental relationships, cross type and the season+year the cross was made. Optional traits or characteristics that are important to a specific breeding program (for example, the market class or seed characteristics such as seed coat colour) may also be specified at the import stage. 

## [Germplasm Collections](germplasm-data/germplasm-collections)
The functionality in Germplasm Collections provides a way to curate germplasm that has a shared purpose for research. This can look like a diversity panel to test the performance of various germplasm in a particular environment, or a population derived from a single cross, such as a recombinant inbred line (RIL) population. The germplasm collection is then linked to a project in the database. A single germplasm can be curated into multiple collections, and a collection can be linked to multiple projects and vice versa.

## [Data Storage Model](germplasm-data/data-storage-model)