hello-world
===========
Repository:
A directory where Git has been initialized to start version controlling your files.

The .git directory If you click it you'll notice it has all sorts of directories and files inside it. You'll rarely ever need to do anything inside here but it's the guts of Git, where all the magic happens.

it's healthy to run git status often. Sometimes things change and you don't notice it.

staged:
Files are ready to be committed.
unstaged:
Files with changes that have not been prepared to be commited.
untracked:
Files aren't tracked by Git yet. This usually indicates a newly created file.
deleted:
File has been deleted and is waiting to be removed from Git.
my first repository on Github
add all:
You can also type git add -A . where the dot stands for the current directory, so everything in and beneath it is added. The -A ensures even file deletions are included.
git reset:
You can use git reset <filename> to remove a file or files from the staging area.

Staging Area:
A place where we can group files together before we "commit" them to Git.
Commit
A "commit" is a snapshot of our repository. This way if we ever need to look back at the changes we've made (or if someone else does), we will see a nice timeline of all changes.

Wildcards:
We need quotes so that Git will receive the wildcard before our shell can interfere with it. Without quotes our shell will only execute the wildcard search within the current directory. Git will receive the list of files the shell found instead of the wildcard and it will not be able to add the files inside of the octofamily directory

When using wildcards you want to be extra careful when doing commits. Make sure to check what files and folders are staged by using git status before you do the actual commit. This way you can be sure you're committing only the things you want.

More useful logs:
Use git log --summary to see more information for each commit. You can see where new files were added for the first time or where files were deleted. It's a good overview of what's going on in the project

git remote:
Git doesn't care what you name your remotes, but it's typical to name your main one origin.
It's also a good idea for your main repository to be on a remote server like GitHub in case your machine is lost at sea during a transatlantic boat cruise or crushed by three monkey statues during an earthquake.

All at Once
You can use:
git checkout -b new_branch
to checkout and create a branch at the same time. This is the same thing as doing:
git branch new_branch
git checkout new_bran
