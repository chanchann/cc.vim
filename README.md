# Steps

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

4. configure ccls

First Open nvim

```
nvim 

:CocConfig
```

Then copy coc-settings.json

```
{
  "languageserver": {
    "ccls": {
      "command": "ccls",
      "filetypes": ["c", "cpp", "cuda", "objc", "objcpp"],
      "rootPatterns": [".ccls-root", "compile_commands.json"],
      "initializationOptions": {
        "cache": {
          "directory": ".ccls-cache"
        },
        "client": {
          "snippetSupport": true
        }
      }
    }
  }
}
```

5. ccls for your project(cmake)

```
mkdir build && cd build
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=On ..
cd ..
ln -s build/compile_commands.json
```
