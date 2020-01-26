#########################################
## Start using Git on the command line ##
#########################################


If you want to start using Git and GitLab, make sure that you have created and/or signed into an account on GitLab.
Open a shell

Depending on your operating system, you will need to use a shell of your preference. Here are some suggestions:

Check if Git has already been installed

Git is usually preinstalled on Mac and Linux.

Type the following command and then press enter:

```python
git --version
```

You should receive a message that tells you which Git version you have on your computer. If you don’t receive a “Git version” message, it means that you need to download Git.

If Git doesn't automatically download, there is an option on the website to download manually. Then follow the steps on the installation window.

After you are finished installing Git, open a new shell and type git --version again to verify that it was correctly installed.
Add your Git username and set your email

It is important to configure your Git username and email address, since every Git commit will use this information to identify you as the author.

On your shell, type the following command to add your username:

```python
git config --global user.name "YOUR_USERNAME"
```

Then verify that you have the correct username:
```python
git config --global user.name
```
To set your email address, type the following command:
```python
git config --global user.email "your_email_address@example.com"
```
To verify that you entered your email correctly, type:
```python
git config --global user.email
```
You need to do this only once, since you are using the --global option. It tells Git to always use this information for anything you do on that system. If you want to override this with a different username or email address for specific projects, you can run the command without the --global option when you’re in that project.
Check your information

To view the information that you entered, along with other global options, type:
```python
git config --global --list
```
Basic Git commands
Go to the master branch to pull the latest changes from there
```python
git checkout master
```
Download the latest changes in the project

This is for you to work on an up-to-date copy (it is important to do this every time you start working on a project), while you set up tracking branches. You pull from remote repositories to get all the changes made by users since the last time you cloned or pulled the project. Later, you can push your local commits to the remote repositories.
```python
git pull REMOTE NAME-OF-BRANCH
```
When you first clone a repository, REMOTE is typically “origin”. This is where the repository came from, and it indicates the SSH or HTTPS URL of the repository on the remote server. NAME-OF-BRANCH is usually “master”, but it may be any existing branch.
View your remote repositories

To view your remote repositories, type:
```python
git remote -v
```
Create a branch

To create a branch, type the following (spaces won’t be recognized in the branch name, so you will need to use a hyphen or underscore):
```python
git checkout -b NAME-OF-BRANCH
```
Work on an existing branch

To switch to an existing branch, so you can work on it:
```python
git checkout NAME-OF-BRANCH
```
View the changes you’ve made

It is important to be aware of what’s happening and the status of your changes. When you add, change, or delete files/folders, Git knows about it. To check the status of your changes:
```python
git status
```
View differences

To view the differences between your local, unstaged changes and the repository versions that you cloned or pulled, type:
```python
git diff
```
Add and commit local changes

You will see your local changes in red when you type git status. These changes may be new, modified, or deleted files/folders. Use git add to stage a local file/folder for committing. Then use git commit to commit the staged files:
```python
git add FILE OR FOLDER
git commit -m "COMMENT TO DESCRIBE THE INTENTION OF THE COMMIT"
```
Add all changes to commit

To add and commit all local changes in one command:
```python
git add .
git commit -m "COMMENT TO DESCRIBE THE INTENTION OF THE COMMIT"
```
Note: The . character typically means all in Git.
Send changes to gitlab.com

To push all local commits to the remote repository:
```python
git push REMOTE NAME-OF-BRANCH
```
For example, to push your local commits to the master branch of the origin remote:
```python
git push origin master
```
Delete all changes in the Git repository

To delete all local changes in the repository that have not been added to the staging area, and leave unstaged files/folders, type:
```python
git checkout .
```
Delete all untracked changes in the Git repository
```python
git clean -f
```
Unstage all changes that have been added to the staging area

To undo the most recent add, but not committed, files/folders:
```python
git reset .
```
Undo most recent commit

To undo the most recent commit, type:
```python
git reset HEAD~1
```
This leaves the files and folders unstaged in your local repository.
Warning: A Git commit is mostly irreversible, particularly if you already pushed it to the remote repository. Although you can undo a commit, the best option is to avoid the situation altogether.
Merge created branch with master branch

You need to be in the created branch.
```python
git checkout NAME-OF-BRANCH
git merge master
```
Merge master branch with created branch

You need to be in the master branch.
```python
git checkout master
git merge NAME-OF-BRANCH
```

Special case : problem of high size of "pack" directory
```python
git repack --adf
git prune
```
Repack: combine all objects that do not currently reside in a "pack", into a pack. It can also be used to re-organize existing packs into a single, more efficient pack. A pack is a collection of objects, individually compressed, with delta compression applied, stored in a single file, with an associated index file. Packs are used to reduce the load on mirror systems, backup engines, disk storage, etc.

The git prune command is an internal housekeeping utility that cleans up unreachable or "orphaned" Git objects. Unreachable objects are those that are inaccessible by any refs. Any commit that cannot be accessed through a branch or tag is considered unreachable. git prune is generally not executed directly. Prune is considered a garbage collection command and is a child command of the git gc command.

#######################
# END
