---
title: Genotypic Data Import
tags:
  - genotype
  - importers
description: This is documentation pertaining to the import of genotypic data within TripalCultivate.
---
## Metadata Preparation

### Organism
Before loading a VCF file, a chado organism record for the species the data is from needs to already exist. This can be done through the administrative interface by navigating to Tripal > Content > Add Tripal Content and clicking on "Organism" under General.

If the samples in your VCF file belong to more than one species, then each species should have its own record. For each sample, each species must be specified using the Organism column within the Samples Mapping file. If the column is left blank, the species of the genome the data was aligned to will be assumed for all samples.

### Genome
The genomic sequence information that the genotypic data was aligned to needs to exist in the database. This can be done through the built-in Tripal GFF3 and/or FASTA importers.

### Project
All genotypic data from a single file upload are grouped using a Chado project. To create a new Chado project through the administrative interface, navigate to Tripal > Content > Add Tripal Content and click on "Project" under General.

## File Preparation

### Mapping samples to the database
A file mapping the samples in the genotype file to the germplasm and samples in the database is required. The file should be tab-delimited and the first 5 columns are required (any columns beyond 7 will be ignored): 
1. **Sample name in the genotypes file**: The name used to identify the sample in the genotypes file to be uploaded. For example, a variant call format (VCF) file will have sample names in the header from column 9 onwards.
2. **Sample name**: This is the name of the particular DNA stock that was assayed and genotyped. This name is often labeled on the tube of DNA and/or the name given to the sequencer.
3. **Sample accession**: The unique identifier of the sample name of the DNA stock (see column #2).
4. **Germplasm name**: The name of the germplasm that was selected for genotyping.
5. **Germplasm accession**: The unique identifier of the germplasm that was selected for genotyping.
6. **Germplasm type**: The type of germplasm, which must be a controlled vocabulary term name. To see what controlled vocabulary terms are supported for germplasm, navigate to `Admistration > Tripal > Page Structure` and look in the category column for `Germplasm`. The term column includes the term name and term accession in brackets. The term name is what you will specify in this column of your samples mapping file. If left blank, the default term is the one which was specified on the configuration page for this module.
7. **Organism**: The full scientific name of the organism of this sample/germplasm. This must match what is already in the database, including subtaxa if applicable (see specification of the Germplasm Accessions Importer for more information). This column allows for multiple species to be present in your genotypic data file, even though the data will have been aligned to a single genome. If left blank, the default organism will be the one of the aligned genome.

### Genotypic File Formats
Under development.

## Genotypic Data Import

### Tripal Importer method
Under development.

### Drush command method
Under development.