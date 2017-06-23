# automagic-missile

Ansible playbook for setting up a new dev-friendly Mac 

1. `xcode-select --install`
2. run `setup.sh`
3. run `ansible-playbook main.yml`

:boom:

By default, Homebrew Cask apps will not be installed (since it installs apps in `~/Applications`, which some applications seem to have a problem with... been meaning to look into this).

To enable Homebrew Cask, run:

```
ansible-playbook main.yml -e "install_cask_apps=true"
```

Basic tags are also available, so (for example), you can set up only vim-related stuff with:

```
ansible-playbook main.yml --tags vim
```

shoutout to http://www.nickhammond.com/automating-development-environment-ansible/ for this
