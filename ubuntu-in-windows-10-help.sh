################################
### Managing bash in Windows ###
################################

# Author: JR
# Update: 05/2019

# Aim: installation of ubuntu for Windows with a graphical interface
# Please read all comments for installation

################################################################################
# In Windows10:
# go to parameters
# update and security category
# for developers
# activate developer mode

# go to control channel path of windows (panneau de configuration)
# program and functionality
# activate or deactivate Windows functionalities
# select folder sub-system Linux for Windows

# go to the Microsoft store
# search for ubuntu, download and install the lastest stable version

# open bash windows
ls -a # see your root folder
cd / # to quit root and search in windows folder
ls mnt/c/Users/Ripoll/Documents # to see your documents

################################################################################
# Update install command
sudo apt-get update

 # Need xbase-clients
sudo apt install xbase-clients

################################################################################
# In Windows install Xming
https://sourceforge.net/projects/xming/ # follow classical install
# launch Xming each time you need to work in ubuntu xfce environment

# for a Xfce interface follow the procedure of 
# https://solarianprogrammer.com/2017/04/16/windows-susbsystem-for-linux-xfce-4/

# Installation of xfce4:
# download and install xfce4 in terminal
sudo apt install xfce4-session
# add export display to your bashrc
sudo apt isntall gedit
export DISPLAY=:0.0
gedit .bashrc
# add the previous line code to bashrc
# you can add this also
# alias xfce='xfce4-session'

# install thunar for xfce
sudo apt install thunar

# close bashrc and terminal and launch Xlaunch
# change parameters of xlaunch to open Xfce environment emulator
# one large window
# start no client
# select all options

# In new terminal:
xfce4-session # or xfce if you add the alias in your bashrc


################################################################################
# Install of conda
# dl miniconda
wget -o Log/miniconda.done -t 2 -nc --show-progress -P Documents https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
# install
bash Documents/Miniconda3-latest-Linux-x86_64.sh 
# update conda
conda update conda 

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
conda create -n Bioindic --clone Documents/<PATH>/
conda activate Bioindic # activate environment


################################################################################
# Now, you can work with conda and mutliple terminal

##############
### END
