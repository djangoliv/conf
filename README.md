# *Description*

## shell configuration:
* bashrc
* inputrc
* prompt.sh: kube-ps1 prompt (sourced from `~/.kube/prompt.sh`)
* pythonrc.py
* gitconfig: git aliases and defaults
* hgrc: mercurial configuration (kept for reference, mercurial is no longer installed)

## emacs files:
* init.org: main configuration, tangled to `~/.emacs.d/init.el`
* custom.el: `custom-set-variables` / `custom-set-faces`
* dotemacs-term: standalone configuration for the terminal-only emacs frame
* lisp/
  * djangoliv-theme.el: my Emacs skin (dark)
  * djangoliv-light-theme.el: light variant
  * hg-status.el: mercurial status in the modeline
  * my-open-at-point.el: DWIM open (file or git commit) via emacsclient

## i3 files:
* i3/config
* i3/i3status.conf
* i3/workspace-1.json: startup layout of workspace 1
* i3/i3quit.sh: lock / poweroff / reboot menu
