#!/bin/sh

# 安装 oh-my-zsh
RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 克隆整个仓库到 ~/.omz（包含安装脚本和 custom 目录）
git clone https://github.com/lchannng/oh-my-zsh-custom.git ~/.omz

# 修改配置指向子目录
sed -i 's|^ZSH_THEME=.*|ZSH_THEME="honukai"|' ~/.zshrc
sed -i "s|^export ZSH=.*|export ZSH=\"\$HOME/.oh-my-zsh\"\nexport ZSH_CUSTOM=\"\$HOME/.omz/custom\"|" ~/.zshrc
