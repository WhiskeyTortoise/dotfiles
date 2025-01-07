# From Scratch
Create Alias
```
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

Initialize the repo
```
dotfiles init
dotfiles branch -M main
dotfiles status

dotfiles config --local status.showUntrackedFiles no

```

Add Files and push
```
dotfiles add ~/.bashrc
dotfiles commit -m "First"
dotfiles remote add origin <url>
dotfiles push
```
# On New System
Create Alias
```
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```


Clone down repo
```
git clone --bare <url> $HOME/.dotfiles
```

Turn off file tracking
```
dotfiles config --local status.showUntrackedFiles no
```

Checkout the repo to put in place. This will warn you if there are any local file conflicts
```
dotfiles checkout
```



# Improvement
Script to initialize the repo and backup files when moving to a new system

Call script from git
```
curl -Lks http://bit.do/cfg-init | /bin/bash
```


```bash
git clone --bare https://bitbucket.org/durdn/cfg.git $HOME/.cfg
function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -filesp .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
```
