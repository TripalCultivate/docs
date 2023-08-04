---
title: Genotypic Data
tags:
  - genotype
description: This is documentation pertaining to curation, file upload and management of genotypic data within TripalCultivate.
---
# Genotypic Data

## Metadata Preparation

### Organism
Before loading a VCF file, a chado organism record for the species the data is from needs to already exist. This can be done through the administrative interface by navigating to Tripal > Content > Add Tripal Content and clicking on "Organism" under General.

If the samples in your VCF file belong to more than one species, then each species should have its own record. For each sample, each species must be specified using the Organism column within the Samples Mapping file. If the column is left blank, the species of the genome the data was aligned to will be assumed for all samples.

### Genome
The genomic sequence information that the genotypic data was aligned to needs to exist in the database. This can be done through the built-in Tripal GFF3 and/or FASTA importers.

### Project
All genotypic data from a single file upload are grouped using a Chado project. To create a new Chado project through the administrative interface, navigate to Tripal > Content > Add Tripal Content and click on "Project" under General.

## File Preparation

### File Formats

### Mapping samples to the database

## Data Import

### Tripal Importer

### Drush command method

### File Distribution
