#!/bin/bash

eval "$(ssh-agent -s)"

ssh-add ~/dotfiles/.ssh/*_rsa
