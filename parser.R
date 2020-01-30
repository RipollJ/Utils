#############################
##Diverse possibility for parsing Rscript ##
#############################


## Author: JR
## Date: 2020-01-30
## Aim: parsing R script for use in shell
## R or python format


#################################
# Python mode: optparse
# conda install -c conda-forge r-optparse
suppressPackageStartupMessages(library("optparse"))

# parse arguments
option_list = list(
  make_option(c("-f", "--file1"), type="character", default=NULL, 
              help="path to first dataset folders", metavar="character"),
  make_option(c("-F", "--file2"), type="character", default=NULL, 
              help="path to second dataset folders", metavar="character"),
  make_option(c("-D", "--file3"), type="character", default=NULL, 
              help="path to third dataset folders", metavar="character"),
  make_option(c("-o", "--output"), type="character", default=NULL, 
              help="path for output files", metavar="character"),
  make_option(c("-v", "--verbose"), action="store_true", default=TRUE,
              help="Print extra output [default]")
); 
 
opt_parser = OptionParser(option_list=option_list);
opt = parse_args(opt_parser);

# managing null arguments
if (is.null(opt$file1)){
  print_help(opt_parser)
  stop("At least one argument must be supplied (input file).", call.=FALSE)
}

# in text opt$file1


##################################
# R mode: arg_parser
# conda install -c conda-forge r-argparser 
suppressPackageStartupMessages(library("argparser"))

# parse arguments
par <- arg_parser("Prepare HTSeq results for R analyses")

# Add  arguments
par <- add_argument(par, "--path1",  short = "-f",  flags = TRUE, help = "path to first dataset directory",  type = "character",  default = NULL)
par <- add_argument(par, "--path2",  short = "-g",  flags = TRUE, help = "path to second dataset directory",  type = "character",  default = NULL)
par <- add_argument(par, "--path3",  short = "-h",  flags = TRUE, help = "path to third dataset directory",  type = "character",  default = NULL)
par <- add_argument(par, "--out", short = "-o", flags = TRUE, help ="path for output file", type = "character", default = NULL)

# Parse the command line arguments
argv <- parse_args(par)

# Print the help message
print(par)

# in text argv$path1

 
 ##################################
 # Python mode: argparse
 # conda install -c r r-argparse
suppressPackageStartupMessages(library("argparse"))

# parse arguments
parser <- ArgumentParser(description = "Prepare HTSeq results for R analyses")

# specify our desired options 
# by default ArgumentParser will add an help option 
parser$add_argument("-v", "--verbose", action="store_true", default=TRUE,  help="Print extra output [default]")
parser$add_argument("-q", "--quietly", action="store_false",  dest="verbose", help="Print little output")

parser$add_argument("-f", "--Path1", type="character", default=NULL,  help="path to first dataset directory",  metavar="character")
parser$add_argument("-F", "--Path2", type="character", default=NULL,  help="path to second dataset directory",  metavar="character")
parser$add_argument("-D", "--Path3", type="character", default=NULL,  help="path to third dataset directory",  metavar="character")

parser$add_argument("-o", "--Out", type="character", default=NULL,  help="path for output file",  metavar="character")

# get command line options, if help option encountered print help and exit,
# otherwise if options not found on command line then set defaults, 
args <- parser$parse_args()

# print some progress messages to stderr if "quietly" wasn't requested
if ( args$verbose ) { 
    write("writing some verbose output to standard error...\n", stderr()) 
}

# in text args$Path1


####################################
# END
