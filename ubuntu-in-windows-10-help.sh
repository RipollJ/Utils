################################
### Managing bash in Windows ###
################################

# go to parameters
# update and security category
# for developers
# activate developer mode

# go to control channel path of windows (panneau de configuration)
# program and functionality
# activate or deactivate Windows functionalities
# select folder sub-system Linux for Windows

# go to the Microsoft store
# search for ubuntu, download and install

# open bash windows
ls -a # see your root folder
cd / # to quit root and search in windows folder
ls mnt/c/Users/Ripoll/Documents # to see your documents

# Install of conda
# dl miniconda
wget -o Log/miniconda.done -t 2 -nc --show-progress -P mnt/c/Users/Ripoll/Documents https://conda.io/miniconda.html
bash mnt/c/Users/Ripoll/Documents/Miniconda3-latest-Linux-x86_64.sh # install
conda update conda # update

# Install Anaconda
conda install anaconda

# Add channels, not always necessary
conda config --add channels biopython
conda config --add channels bioconda
conda config --add channels conda-forge
conda config --show channels
# if problems of error 404 page not found for channels
#conda config --remove-key channels
#conda config --append channels conda-forge --append channels bioconda

# Install snakemake
conda install -c bioconda -c conda-forge snakemake

# Clone environment of previous work
conda create -n Bioindic --clone mnt/c/Users/Ripoll/Documents/Article_Meta_bioindic/Ultra_Analyses/env/
conda activate Bioindic # activate environment

# Update install command
sudo apt-get update

 # Need xbase-clients
sudo apt install xbase-clients

# In Windows install Xming
https://sourceforge.net/projects/xming/ # follow classical install
# launch Xming with defaults values at each start of your computer

# OR Install xvfb in linux (doesn't work for me)
#sudo apt install xvfb
#Xvfb :0 -screen 0 1920x1080x24 +extension GLX -nolisten tcp -dpi 96

# Install an editor of code
sudo apt install gedit # base editor of gnome

# Open gedit script file
export DISPLAY:0
gedit mnt/c/Users/Ripoll/Documents/Script_Ripoll/Sqlite_db.R # think to launch "Xming launch" at your next boot
# quit the open windows to work

# Now, you can work

# for a Xfce interface follow the procedure of https://solarianprogrammer.com/2017/04/16/windows-susbsystem-for-linux-xfce-4/

### END