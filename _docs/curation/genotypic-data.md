---
title: Genotypic Data
tags:
  - genotype
description: This is documentation pertaining to curation, file upload and management of genotypic data within TripalCultivate.
---
# Genotypic Data

This module package provides generic support for large-scale genotypic data, genetic maps, and QTL with importers, content pages and visualizations. 

## [Genotypic Data Import](genotypic-data/genotypic-data-importer)
The genotypic data importer accommodates genotypic data stored in the variant call format (VCF), as well as a more simplified matrix file format. These data, even large-scale datasets, are stored within Chado's relational database model with tight integration to germplasm and phenotypic data. 

## [VCF File Management](genotypic-data/vcf-management)
This functionality provides a means of uploading variant call format (VCF) files so that users can access pertinent metadata, filter and convert genotypic data to a format that suits their needs. This can be useful when a genotypic dataset is not ready for import into the database and multiple researchers will be using it for their projects. A researcher may also require access to the data in a specific format required by analysis software. The curator will have the ability to control user access, include the methods that generated the dataset, generate statistical summaries, and specify which conversions to other file formats are appropriate to that dataset.

## [Data Storage Model](genotypic-data/data-storage-model)
This section focusses on how genotypic data are stored at the database level. Data curators may find this information helpful when checking what connections between data are being made or if data needs to be modified at the database level.