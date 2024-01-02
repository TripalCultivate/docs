---
title: Data Storage Model
tags:
  - genetic map
  - QTL
  - data storage
  - importers
description: This is documentation pertaining to how genetic map data and QTLs are stored in the Chado database.
---

## Data Storage Model for Genetic Maps and QTLs

### Genetic Maps
Genetic maps and their corresponding metadata are stored in the following chado tables: `featuremap`, `featuremapprop`, `feature`, `featuremap_analysis`, `featureprop`, `featurepos` and `analysis`:

- A map is created in the `featuremap` table whereas metadata regarding its description, population type and size are stored in `featuremapprop`
- Methodology of how the map was created is stored in the `analysis` and `featuremap_analysis` tables
- Each position in the map is a combination of the linkage group, locus and genetic marker (each are stored in the `feature` table) with the position itself stored in the `featurepos` table.

![](https://tripal-qtl.readthedocs.io/en/latest/_images/MSTmap.datastorage.png)

### QTLs
QTL data are stored as expected by Tripal Map within the following chado tables: `featurepos` and `featureposprop`
  
- It is assumed the map matches the format described for the MSTMap importer and that QTL features are located on that map using the `featurepos` table
- The position stored in `featurepos` by the QTL Importer is the position of the QTL peak
- The QTL peak is also stored in the `featureposprop` table along with the confidence interval values

![](https://tripal-qtl.readthedocs.io/en/latest/_images/QTLimporter.datastorage.png)
