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
        * `~/.vim/bundle/YouCompleteMe/third_part/ycmd/cpp/ycm/.ycm_extra_conf.py`
    * move this file to workspace or ~
    * add some lib in this file
    ``` python
    # add this at `flags = []`
    '-isystem',
    '/usr/include/c++/7.3.0',
    '-isystem',
    '/usr/include
    ```