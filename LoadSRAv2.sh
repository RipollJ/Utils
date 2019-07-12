#!/bin/bash

########################
# Download SRA data v2 #
########################


#######################################################################
# Author: RipollJ
# Created: 2019-06-25
# License: License CC-BY-NC 4.0
# Last update: 2019-06-26


#######################################################################
# Pre-requisite:
   # Use: conda for installation (or not), sra-toolkits and parallel-fastq-dump
   # conda install -c bioconda sra-tools
   # conda install -c bioconda parallel-fastq-dump
   # this version uses GNU parallel also


#######################################################################
# droit execution: chmod +x LoadSRA.sh
# execution ./LoadSRA.sh ListOfIds.txt {number of threads to use}
# Caution: the double of the value given in threads will be used due to parallel
# ListOfIds.txt: your file with SRA Identifiants to download, one file by raw

# initialize variables
input_file=""
output_file=""
verbose=0

usage="$(basename "$0") 
-- download SRA files faster using parallel programs --

Usage: $(basename "$0") [-h] [-f n] [-t int] [-o n]

where:
    -h  edit help text
    -f  file containing ids, one by raw
    -t  number of threads to use
    -o  path to output directory"

while getopts ':hf:t:o:' opt; do
  case "$opt" in
    h) echo "$usage"
       exit
       ;;
    f) f=${OPTARG}
       ;;
    t) t=${OPTARG}
       ;;
    o) o=${OPTARG}
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
#option=${2:-4}
#option=${3:-./}


# Counting total number of arguments
#echo "Total number of arguments : $#"
# Reading argument values individually
echo "File path : $f"
echo "Number of threads : $t"
echo "Output path : $o"


function fline {
  cat $f | parallel -j 2 "FastDump {}"
}; export -f fline


function FastDump {
  prefetch -O ./ -X 999999999 $f

  if [[ -e ${f}.sra ]] ; then
    parallel-fastq-dump -s ${f}.sra -t $t -O $o --tmpdir ./ --split-3 --gzip && rm ${f}.sra
  else
    echo '[ERROR]' $f 'apparently not successfully loaded' && exit 1
  fi
}; export -f FastDump


fline $f

#######################################################################
#END
