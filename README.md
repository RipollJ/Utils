## How to
These scripts are provided as is.



### Ubuntu in Windows 10 help

This is a small guideline tool to install bash ubuntu on Windows 10

with conda and snakemake installations

and gedit visualisation (you can choose an other editor, i.e. vim or emacs)



### Update of R version

If you want to update your R version and don't loose all your installed packages



### Download SRA files quickly

LoadSRA.sh bash script allows you to download SRA files according to a list of 
IDs more quickly than using fastq-dump.

LoadSRAv2.sh uses GNU parallel and doubles processes, caution.


### Synchronisation between two computers or a computer and an external hard-disk

There are two solutions:
- Rsync: unilateral transfer between computer and other (hosted on conda)
- Unison: bilateral transfer between computer and other (not hosted on conda)

Usage: ''' rsync -r path/source path/destination '''

Run rsync with the -n switch to see what what would be transferred without copying data. 
Adding -q will suppress regular output, only displaying files that could not be transferred.

I prefer rsync because I don't need all files in one of the two computers (to gain space).


### R parser

Several packages exist to parse Rscript for execution in the shell.
Here I choose 3 packages, 2 adapted from python (optparse and argparse) and 1 specific to R (argparser).

Others packages that you can test: getopt (C-like getopt behavior), docopt (it's a port a docopt.py), minimist (JavaScript library) & optigrab (GNU-, Java- or Microsoft- style syntaxes supported)


### Pipeline tools

For a curated list of awesome pipeline toolkits inspired by Awesome Sysadmin, look at this git:

https://github.com/pditommaso/awesome-pipeline


### Others

If you have some request for this section don't hesitate to comment it.

Enjoy.