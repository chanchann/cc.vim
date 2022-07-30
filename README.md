# Configure Steps

1. clone this repo

```
git clone https://github.com/chanchann/vim_config.git
```

2. run instsall script

```
cd vim_config

chmod +x install.sh

sudo ./install.sh
```

3. install plugin

First open nvim 

```
nvim 

:PlugInstall
```

4. ccls for your project(cmake)

```
mkdir build && cd build
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=On ..
cd ..
ln -s build/compile_commands.json
```

## Introduction

1. Beautiful UI

![ui](./asset/01_theme.png)

2. File Manager

ctrl + p to find files quickly

![file](./asset/02_file.png)

3. Text Search

:Ag or :Rg 

![search](./asset/03_search.png)

4. File list

ctrl + f to open the file list

![filelist](./asset/04_file_list.png)

5. Tags

ctrl + t to open the tags

![tags](./asset/05_tag.png)

6. Code completion 

![completion](./asset/06_complate.png)

7. Format

Copy .clang-format to you project root