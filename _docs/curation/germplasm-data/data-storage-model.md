---
title: Data Storage Model
tags:
  - germplasm
  - data storage
  - importers
description: This is documentation pertaining to how germplasm data are stored in the Chado database.
---

## Data Storage Model for Germplasm

### Germplasm Accessions
Germplasm accessions and their corresponding metadata are stored in the following chado tables: `stock`, `stockprop`, `stock_relationship`, `db`, `dbxref`, `synonym` and `stock_synonym`:

- The organism of one accession is determined by the genus, species and subtaxa (optional)
- Germplasm accessions are loaded into the table `stock`, 
- The external database (eg: genebank) is stored in `dbxref` and `db`
- Properties are loaded into the table `stockprop`
- Synonyms are loaded into the tables `synonym`, `stock_synonym` and `stock_relationship`
  - A stock-relationship is **only** created if the synonym name already exists in the stock table with the same name.

![](https://github.com/TripalCultivate/docs/assets/7927760/a4ad840a-a777-4163-812f-5a42f4be306c)


### Germplasm Crosses
Germplasm crosses and their corresponding metadata are stored in the following chado tables: `stock`, `stockprop`, and `stock_relationship`:
  
- Germplasm crosses are loaded into the table `stock`
- Properties for each germplasm are loaded into table `stockprop`
- The relationship between germplasm and its parents is loaded into the table `stock_relationship`
