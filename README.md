# Utils
----------------------------------------------------

Here, you can find some scripts and documentation to help you with different process:
- Git command [git_command.md](https://github.com/RipollJ/Utils/blob/master/doc/git_command.md)
- Update of R without loss of your installed packages [Re_Install_R.R](https://github.com/RipollJ/Utils/blob/master/src/Re_Install_R.R)
- R parser [parser.R](https://github.com/RipollJ/Utils/blob/master/src/parser.R)
- Automatic download of SRA files [LoadSRAv2.sh](https://github.com/RipollJ/Utils/blob/master/src/LoadSRAv2.sh)
- Merge of fastq files [mergeFastq.sh](https://github.com/RipollJ/Utils/blob/master/src/mergeFastq.sh)
- IFB core cluster use [IFB_cluster.md](https://github.com/RipollJ/Utils/blob/master/doc/IFB_cluster.md)
- Bioconda recipes [Adding_Bioconda_recipes.md](https://github.com/RipollJ/Utils/blob/master/doc/Adding_Bioconda_recipes.md)
- Ubuntu WSL documentation for windows 10 [ubuntu-in-windows-10-help.sh](https://github.com/RipollJ/Utils/blob/master/doc/ubuntu-in-windows-10-help.sh)


All these informations are provided as is, without garanty.

[LICENSE](https://github.com/RipollJ/Utils/blob/master/LICENSE.md) terms are in agreement with GNUv3 License.

See: https://www.fsf.org/

[<small>[top↑]</small>](#)

------------------------------------------------------

## Other help

### Synchronisation between two computers or a computer and an external hard-disk

There are two solutions:
- Rsync: unilateral transfer between computer and other (hosted on conda)
- Unison: bilateral transfer between computer and other (not hosted on conda)

Usage: ''' rsync -r path/source path/destination '''

Run rsync with the -n switch to see what what would be transferred without copying data. 
Adding -q will suppress regular output, only displaying files that could not be transferred.


### Contributing

If you have some request, don't hesitate to contact me.

Enjoy.

[<small>[top↑]</small>](#)