# IFB cluster

- Author: JR
- Date: 2020-05-20

--------------------------------------------------------------

# Table of contents

- [IFB cluster](#ifb-cluster)
- [Table of contents](#table-of-contents)
  - [Info](#info)
  - [Creation of cluster's account](#creation-of-clusters-account)
  - [Creation of your own project](#creation-of-your-own-project)
  - [Accessibility and support community](#accessibility-and-support-community)
    - [Accessibility](#accessibility)
    - [Support](#support)
  - [Quick start](#quick-start)
    - [Quick start notice](#quick-start-notice)
    - [Storage](#storage)
  - [Install and environment management](#install-and-environment-management)
    - [Conda](#conda)
    - [Singularity](#singularity)
    - [Docker](#docker)
  - [Job submission](#job-submission)
    - [SLURM](#slurm)
    - [Snakemake](#snakemake)

----------------------------------------------------------------

## Info

The IFB Core Cluster is composed of 4 300 cores (hyperthreads) and of 400 To of storage.
[Description](https://ifb-elixirfr.gitlab.io/cluster/doc/cluster-desc/)

## Creation of cluster's account

https://www.france-bioinformatique.fr/fr/cluster

## Creation of your own project

Before trying to run any jobs you will need a project and you can request one here: https://my.cluster.france-bioinformatique.fr

--------------------------------------------------------------

## Accessibility and support community

### Accessibility

Access can be made with: SSH, Galaxy and other web portals. For now, only SSH, Galaxy and RStudio are functional.
[Documentation](https://ifb-elixirfr.gitlab.io/cluster/doc/)

### Support

If you need some help for (question, support, installation, tools or params), please contact the Support IFB Core Cluster team, at: https://community.cluster.france-bioinformatique.fr
[Account creation](https://community.france-bioinformatique.fr/)

[<small>[top↑]</small>](#)

---------------------------------------------------------------

## Quick start

### Quick start notice

https://ifb-elixirfr.gitlab.io/cluster/doc/quick-start/

### Storage

Several volumes of data storage are available on the NNCR cluster. Use it knowingly.

| Path             | Usage                                         | Quota (default) | Backup policy |
| ---------------- | --------------------------------------------- | --------------- |---------------|
| /shared/home     | Home directory (personnal data)               | 200GB *         | NA            |
| /shared/projects | Scientific and project (common data)          | 500GB           | NA            |
| /shared/bank     | Read-Only. common banks (UniProt, RefSeq, ...)|                 |               |

* note: due to covid19, home size can be reduced, like it was the case for the project space which diminished from 1 To to 500 G.

[Info on public bank](https://ifb-elixirfr.gitlab.io/cluster/doc/banks/)

[<small>[top↑]</small>](#)

---------------------------------------------------------------

## Install and environment management

### Conda

https://ifb-elixirfr.gitlab.io/cluster/doc/conda/

### Singularity

https://ifb-elixirfr.gitlab.io/cluster/doc/singularity/

### Docker

Use singularity module
[Documentation](https://community.france-bioinformatique.fr/t/installation-docker/440/3)

[<small>[top↑]</small>](#)

----------------------------------------------------------------

## Job submission

### SLURM

https://ifb-elixirfr.gitlab.io/cluster/doc/slurm_user_guide/

### Snakemake

https://ifb-elixirfr.gitlab.io/cluster/doc/tutorials/snakemake/#15

[<small>[top↑]</small>](#)
