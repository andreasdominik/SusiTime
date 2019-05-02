# How to write a new skill

This brief tutorials guides through the process of
making a new skill from this template in Julia language.


## Set up a new project
### Get the template

To start with a new SnipsHermesQnD skill, just set up a new GitHub repository for
the code of your skill,
get a clone of the GitHub project ADoSnipsTemplate and
define your repo as remote for the local clone of the template.

All file- and directory names can be left unchanged; however you
may want to rename the project directory and
the file `action-ADoSnipsTemplate.jl` to a name
thet identifies your new skill. The new name of the
action-executable **must** start with
`action-`, because the snips skill manager identifies executable
apps by this naming convention:

```sh
cd Documents
cd SnipsSkills
git clone git@github.com:andreasdominik/ADoSnipsTemplate.git

mv ADoSnipsTemplate mySkill
cd mySkill/
mv action-ADoSnipsTemplate.jl action-mySkill.jl

git rm action-ADoSnipsTemplate.jl
git add action-mySkill.jl
git status
git commit -m 'initial commit'
git status
git remote set-url origin git@github.com:andreasdominik/mySkill.jl.git
git push origin master
```


### Initialise a new project for the new skill


### Apapt the template

## Files in the template

### Directory listing

### Things to be adapted

## Example with low-level API



## Example with on/off
