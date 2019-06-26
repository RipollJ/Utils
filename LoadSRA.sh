#!/bin/bash

#####################
# Download SRA data #
#####################


#######################################################################
# Author: RipollJ
# Created: 2019-06-25
# License: License CC-BY-NC 4.0
# Last update: 2019-06-25


#######################################################################
# Pre-requisite:
   # Use: conda for installation (or not), sra-toolkits and parallel-fastq-dump
   # conda install -c bioconda sra-tools
   # conda install -c bioconda parallel-fastq-dump


#######################################################################
# droit execution: chmod +x LoadSRA.sh
# execution ./LoadSRA.sh ListOfIds.txt {number of threads to use}
# Caution: the double of the value given in threads will be used due to parallel
# ListOfIds.txt: your file with SRA Identifiants to download, one file by raw


usage="$(basename "$0") [-h] [-f n] [-t int] [-o n]

-- download SRA files faster using parallel programs --

where:
    -h  show this help text
    -f  file containing ids, one by raw
    -t  number of threads to use
    -o  path to output directory"

while getopts ':hfto:' option; do
  case "$option" in
    h) echo "$usage"
       exit
       ;;
    f) filen=$1
       ;;
    t) threads=$2
       ;;
    o) outdir=$3
       ;;
    :) printf "missing argument for -%f\n" "$OPTARG" >&2
       echo "$usage" >&2
       exit 1
       ;;
   \?) printf "illegal option: -%f\n" "$OPTARG" >&2
       echo "$usage" >&2
       exit 1
       ;;
  esac
done
shift $((OPTIND - 1))


# default options
option=${2:-3}
option=${3:-./}


function fline {
  cat $1 | FastDump {}
}; export -f fline


function FastDump {
  prefetch -O ./ -X 999999999 $1

  if [[ -e ${1}.sra ]]; then
    parallel-fastq-dump -s ${1}.sra -t $2 -O $3 --tmpdir ./ --split-3 --gzip && rm ${1}.sra
  else
    echo '[ERROR]' $1 'apparently not successfully loaded' && exit 1
  fi
}; export -f FastDump


fline $1

#######################################################################
#END
