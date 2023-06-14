#!/usr/bin/env bash

#################
# mergeFastq.sh #
#################

# Author: RipollJ
# Created: 2020-06-04
# License: License CC-BY-NC 4.0
# Last update: 2020-06-04

###############################################################################

# Aim: Merge/Concatenate fastq files split over lanes

# ```shell
#  # Ex. 3 samples (id1, id2, id3), paired end (R1, R2), split over four lanes (L001, L002, L003, L004).
#  #for test:
#  touch id{1,2,3}_L00{1,2,3,4}_R{1,2}_001.fastq.gz
#  ls *.fastq.gz
#  chmod +x mergeFastq.sh
#  # see help to view required options
#  ./mergeFastq.sh -h
# ```

# This script is provided as is without any warranty.

###############################################################################

# right of execution: chmod +x mergeFastq.sh
# execution ./mergeFastq.sh -p [path]

# Getopt args parser
usage() {
  echo "Usage: $0 [args]

-- Merge fastq files [fastq | fastq.gz] --

Usage: $(basename "$0") [-p path] [-e conditions]

where:
    -h  edit this help text
    -p  path to data
    -e  conditions [ paired | single ]
"
}

if (($# == 0)); then
  echo "Please pass arguments, see help info -h"
  exit 2
fi

while getopts "p:e:?h" opt; do
  case $opt in
  p) path=$OPTARG ;;
  e) conditions=$OPTARG ;;
  h)
    usage
    ;;
  :)
    echo "Option -$OPTARG requires arguments" >&2
    exit 1
    ;;
  esac
done

###############################################################################

# check
echo "path: $path"
echo "condition: $conditions"

#go to data directory
cd $path
pwd

# list of uniq identifier
list=$(ls *.fastq.gz | xargs -n 1 basename | cut -d '_' -f 1 | uniq)
echo $list

for file in $list; do

  # condition on paired-end or single data
  if [ "$conditions" == "paired" ]; then
    echo "Paired"
    echo "cat $file*_R1_*.fastq.gz > "$file"_R1.fastq.gz"

    cat $file*_R1_*.fastq.gz >"$file"_R1.fastq.gz

    echo "cat $file*_R2_*.fastq.gz > "$file"_R2.fastq.gz"
    cat $file*_R2_*.fastq.gz >"$file"_R2.fastq.gz

  elif [ "$conditions" == "single" ]; then
    echo "Single"

    echo "cat $file*_R1_*.fastq.gz > "$file".fastq.gz"
    cat $file*_R1_*.fastq.gz >"$file".fastq.gz

  fi

done

###############################################################################
# END
