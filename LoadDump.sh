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


#######################################################################
# droit execution: chmod +x LoadDump.sh
# execution ./LoadDump.sh ListOfIds.txt {number of threads to use}
# ListOfIds.txt: your file with SRA Identifiants to download, one file by raw

#file = $1

function LoadDump {
  #v= echo $(cat $1)
  prefetch -O ./ -X 999999999 $1

  if [[ -e ${1}.sra ]]; then
    parallel-fastq-dump -s ${1}.sra -t 8 -O ./ --tmpdir ./ --split-3 --gzip && rm ${1}.sra
  else
    echo '[ERROR]' $1 'apparently not successfully loaded' && exit 1
  fi
}; export -f LoadDump

cat ListOfIds.txt | parallel -j 2 "LoadDump {}"
