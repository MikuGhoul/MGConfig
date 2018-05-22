# vimrc
just for fun

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
    '-isystem', '/usr/include/c++/7.3.1',	# maybe not 7.3.1, whatever
	'-isystem', '/usr/local/include',
    '-isystem', '/usr/include,
    ```
