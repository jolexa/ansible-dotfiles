# ansible-dotfiles
Reference Ansible Playbook for learning.

This repo and corresponding Makefile will push out dotfiles to all hosts that
in use. It is meant for reference and not a formal project at all.

## make check

Runs the `site.yml` playbook with the `--check` and `--diff` flags

## make install-local

Runs the `site.yml` playbook against the localhost only

## make install-172

Runs the `site.yml` playbook against remote machines based on hosts that have
already been seen in the 172.16.0.0/12 network
