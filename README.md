#  MGConfig
just for fun

#### Compile VIM with 
* What i really need
    * `+ clipboard` function
* Dependencies
    * liblua5.1-dev luajit libluajit-5.1  python3-dev ruby-dev   libx11-dev libxmu-dev libxi-dev
* `git clone  https://github.com/vim/vim.git`
* config command
    ```
    ./configure \
    --enable-multibyte \
    --enable-rubyinterp=dynamic \
    --with-ruby-command=/usr/bin/ruby \
    --enable-pythoninterp=dynamic \
    --enable-python3interp \
    --with-python3-config-dir=/usr/local/python3/lib/python3.6/config-3.6m-x86_64-linux-gnu \
    --enable-luainterp \
    --with-luajit \
    --enable-cscope \
    --enable-gui=auto \
    --with-features=huge \
    --with-x \
    --enable-fontset \
    --enable-largefile \
    --disable-netbeans \
    --with-compiledby="MikuGhoul" \
    --enable-fail-if-missing
    ```


#### YCM
* Dependencies
    * python
    * CMake
    * Clang
* Compile
    * C-family languages
        * `sudo ./install.sh --clang-completer --system-libclang`
* .ycm_extra_conf.py
    * [Default .ycm_extra_conf.py](https://github.com/Valloric/ycmd/blob/master/cpp/ycm/.ycm_extra_conf.py)
        * `~/.vim/plugged/YouCompleteMe/third_part/ycmd/cpp/ycm/.ycm_extra_conf.py`
    * move this file to workspace or ~
    * add some lib in this file, and [note the order](https://github.com/Valloric/YouCompleteMe/issues/2885)
    ``` python
    # add this at `flags = []`
    # linux
    '-isystem', '/usr/include/c++/7.3.1',	# maybe not 7.3.1, whatever
	'-isystem', '/usr/local/include',
    '-isystem', '/usr/include,
    ```
    ``` python
    # windows
    '-isystem', 'D:/Software/MinGW/include/c++',
    '-isystem', 'D:/Software/MinGW/include',
    ```
