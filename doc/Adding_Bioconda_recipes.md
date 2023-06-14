# Adding Bioconda recipes

To do list if you want to add a recipe to bioconda.

---

### step 1

- Fork bioconda/bioconda-recipes on your github

- Create a local clone for work

```shell
git clone https://github.com/<USERNAME>/bioconda-recipes.git
```

- To be able to update this folder more easily with changes made to our repository, add the main bioconda-recipes repo as an upstream remote

```shell
cd bioconda-recipes
git remote add upstream https://github.com/bioconda/bioconda-recipes.git
```

- Create your branch for work and change to this branch

```shell
git branch <PROGRAM_NAME>
git checkout <YOUR_BRANCH_ie_PROGRAM_NAME>
```

- Create required files according to script language, see [guidelines](https://bioconda.github.io/contributor/guidelines.html#)

```shell
cd recipes
mkdir <PROGRAM_NAME_in_lower_case>
touch meta.yaml
touch build.sh
```

- Add your recipe to your clone git (PROGRAM_NAME)

```shell
git status
git add .
git commit -m "YOUR_MESSAGE"
git push
```

[<small>[top↑]</small>](#)

---

### step 2

- Take the link for the archive in the release and tag part of your program and add to your meta.yaml

- A sha256 key is required for your meta.yaml file

```shell
wget https://github.com/RipollJ/<YOUR_PROGRAM>/archive/<VERSION>.tar.gz
shasum -a 256 <VERSION>.tar.gz
```

- Add the sha256 key to your meta.yaml in the bioconda-recipes of your program

- Add your new repo in your program to your git (Archives)

```shell
git status
git add .
git commit -m "YOUR_MESSAGE"
git push
```

[<small>[top↑]</small>](#)

---

### step 3

- Testing recipes locally

- Bootsrap method in your local branch of bioconda-recipes

```shell
./bootstrap.py /tmp/miniconda
source ~/.config/bioconda/activate

# optional linting
bioconda-utils lint --git-range master --packages <YOUR_PROGRAM>

# build and test
bioconda-utils build --docker --mulled-test --git-range master --packages <YOUR_PROGRAM>
```

- If test are ok, go to your fork of the bioconda-recipes repository and find the branch you have just created in the Branch: drop down. You should now see a message saying This branch is 1 commit ahead [...] bioconda:master. To the right of that line you will find a button Pull Request. Click this and follow the instructions to open a new Pull Request.

- Once the Pull Request has been merged, you can click Delete Branch directly on GitHub, or you can remove the branch with git

```shell
# Delete local branch
git branch -D <YOUR_BRANCH>
# Delete branch in your fork via the remote named "origin"
git push origin -d <YOUR_BRANCH>
```

[<small>[top↑]</small>](#)

---

### step 4

- When bioconda team has validated, try to install

```shell
conda install <YOUR_PROGRAM>
```

---

[<small>[top↑]</small>](#)
