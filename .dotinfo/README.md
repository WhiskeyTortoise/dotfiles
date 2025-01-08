From Scratch
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

