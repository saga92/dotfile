##How to configure your vim
**step 0**: make sure you have git or install by apt-get install git

**step 1**: make sure your version of vim is above 7.3 or apt-get install vim

**step 2**: install pathogen 
```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \ 
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

**step 3**: install nerdtree 
```
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
```

**step 4**: install pip
```
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
```

**step 5**: install jedi
```
pip install jedi
```

**step 6**: install jedi-vim
```
cd ~/.vim/bundle/ && git clone --recursive https://github.com/davidhalter/jedi-vim.git
```

**step 7**: cp the .vimrc to the ~/
```
cp .vimrc ~/.vimrc
```

then enjoy your vim for python
