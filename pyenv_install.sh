#!/bin/bash
if [ `whoami` = "root" ]; then
	apt install -y \
		build-essential \
		openssl \
		libffi-dev \
		libssl-dev \
		zlib1g-dev \
		liblzma-dev \
		libbz2-dev \
		libreadline-dev \
		libsqlite3-dev \
		libopencv-dev \
		tk-dev \
		git

fi
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

cd $HOME/.pyenv
git checkout v2.0.3

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
source ~/.bashrc
