---
title: Genetic Maps
tags:
  - genetic map
description: This is documentation pertaining to curation and management of genetic map and QTL data within TripalCultivate.
---
# Genetic Maps
A genetic map is produced to localize various desirable traits to a region of the genome. Quantitative trait loci (QTL) are identified by looking for statistical significance between a specific trait (phenotypic data) and genotypic data. The purpose of this module is to facilitate import of both genetic maps and QTLs into the Chado database, with the end goal of allowing users to visualize the linkage groups of a genetic map and to compare maps that share the same markers using the Tripal Map tool.

## [MSTMap Importer](genetic-maps/mstmap-importer)
This importer will load genetic maps which follow the same format output by the [MSTMap software](http://alumni.cs.ucr.edu/~yonghui/mstmap.html). Since the output from MSTMap is very simple and straightforward, it is also easy to convert formats output from different mapping software into the format needed by this importer. The importer also makes it easy to associate any metadata regarding a map, such as information regarding the population used and the methodology.

## [QTL Importer](genetic-maps/qtl-importer)
This importer will load quantitative trait loci (QTL) and associate them with a pre-existing map and phenotypic trait. Due to a lack of standards set by the biological community, this importer takes a customaized format as input, which aims to capture as much information as possible. This includes the peak marker, position and LOD score, any phenotypic variance explained by the QTL, and confidence intervals if applicable.

## [Data Storage Model](genetic-maps/data-storage-model)
This section focusses on how genetic map data are stored at the database level. Data curators may find this information helpful when checking what connections between data are being made or if already imported data need to be modified in the database.
