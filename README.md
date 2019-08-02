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

I prefer rsync because I don't need all files in one of the two computers (to gain space).


### Others

If you have some request for this section don't hesitate to comment it.

Enjoy.