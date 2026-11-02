# nvim

- C:\Users\Therapy\AppData\Local\nvim

```powershell
New-Item -Path "C:\Users\Therapy\AppData\Local\nvim" -ItemType SymbolicLink -Target "E:\developer\programing\dotfiles\Windows\nvim"
```

# PowerShell

- $PROFILE
  - C:\Users\Therapy\Documents\PowerShell\Microsoft.PowerShell_profile.ps1

# emacs

- C:\Users\Therapy\AppData\Roaming

```powershell
New-Item -Path "C:\Users\Therapy\AppData\Roaming\.emacs" -ItemType SymbolicLink -Target "E:\developer\programing\dotfiles\.emacs"

New-Item -Path "C:\Users\Therapy\AppData\Roaming\.emacs.custom.el" -ItemType SymbolicLink -Target "E:\developer\programing\dotfiles\.emacs.custom.el"

New-Item -Path "C:\Users\Therapy\AppData\Roaming\.emacs.local" -ItemType SymbolicLink -Target "E:\developer\programing\dotfiles\.emacs.local"
```