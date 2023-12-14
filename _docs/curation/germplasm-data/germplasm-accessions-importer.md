---
title: Germplasm Accessions Importer
tags:
  - germplasm
  - importers
description: This is documentation pertaining to import of germplasm accessions data into the Chado database.
---

## Germplasm Accessions Importer
The Germplasm Accessions Importer can be accessed by going to "Administration > Tripal > Data Loaders > Tripal Cultivate: Germplasm Accessions"

### Select Genus
First, select the genus of the accessions in the file you wish to upload by selecting it from the dropdown menu. All accessions in one file must belong to the same genus and match this selection. Regardless, it is not recommended to maintain germplasm data across multiple genus within the same file, as assigned names can be re-used across genus and cause confusion during curation.
### File Format
The file should be formatted as a TSV or TXT file with up to 12 columns in the following order:
1. **Germplasm Name**: The official name of this accession. If there are multiple names for this accession then we suggest you use the one given by the seed source and then list the others as synonyms in case it is later determined there are differences between names due to divergence or contamination.
2. **External Database**: The name of the institution who assigned the accession. This name must already be present in the chado table `db` and match exactly.
3. **Accession Number**: A unique identifier for the germplasm accession.
4. **Germplasm Species**: The species of the accession.
5. **Germplasm Subtaxa**: A subtaxon can be used to store any additional taxonomic identifier. The rank below species is specified, followed by the name. For example, if the full scientific name is `Daucus carota subsp. sativus`, then the value for this column will be `subsp. sativus`. Full and abbreviated versions of rank are supported. The following abbreviations are allowed: subsp. (for subspecies); convar. (for convariety); var. (for variety or varietas); subvar. (subvariety or subvarietas) f. (for form or forma); subf. (for subform or subforma); Group (for cultivar group).
6. **Institute Code**: The FAO WIEWS code of the institute where the accession is maintained. An FAO WIEWS Institute Code consists of the 3-letter ISO 3166-1 alpha 3 country code of the country where the institute is located plus a number (e.g. COL001, USA1004). You can lookup the code for a particular institute [here](https://www.fao.org/wiews/data/organizations/en/?no_cache=1).
7. **Institute Name**: The name of the Institute that has bred the material.
8. **Country of Origin Code**: A 3-letter ISO 3166-1 code of the country in which the sample was originally collected, bred or selected. Codes can be [found here](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3).
9. **Biological Status of Accession**: The 3 digit code representing the biological status of the accession. The coding scheme for biological status can be used at two different levels of detail: either as a general code (e.g. 100, 200) or a more specific code (e.g. 110, 120). See table provided below for the various codes and their meaning.
10. **Breeding Method**: The short unique identifier for the method used to generate this accession. In the BrAPI, this would be the `breedingMethodDbId` and then more details for the method would be retrieved via the `/breedingmethods` call.
11. **Pedigree**: The parental selection history of this germplasm. It is recommended to use the format described in [Purdy et. al. (1969)](https://acsess.onlinelibrary.wiley.com/doi/epdf/10.2135/cropsci1968.0011183X000800040002x) (i.e. `maternal-parental\paternal-parent`)
12. **Synonyms**: A list of alternative names or IDs used to reference this germplasm. Multiple synonyms can be separated using commas or semicolons (eg. `synonym1,synonym2`).

**Biological Status of Accession Table**
  | Code | Meaning    |
  |------|------------|
  | 100  | Wild       |
  | 110  | Natural    |
  | 120  | Semi-natural/wild |
  | 130  | Semi-natural/sown |
  | 200  | Weedy |
  | 300  | Traditional cultivar/landrace |
  | 400  | Breeding/research material |
  | 410  | Breeder’s line |
  | 411  | Synthetic population |
  | 412  | Hybrid |
  | 413  | Founder stock/base population |
  | 414  | Inbred line (parent of hybrid cultivar) |
  | 415  | Segregating population |
  | 416  | Clonal selection |
  | 420  | Genetic stock |
  | 421  | Mutant (e.g. induced/insertion mutant, tilling population) |
  | 422  | Cytogenetic stock (e.g. chromosome addition/substitution, aneuploid, amphiploid) |
  | 423  | Other genetic stock (e.g. mapping population) |
  | 500  | Advanced or improved cultivar (conventional breeding methods) |
  | 600  | GMO (by genetic engineering) |
  | 999  | Other |
