# imtoggle.nvim

An input method switcher for wsl.

## Usage

### Download the dependencies

Download [im-select.exe](https://github.com/daipeihust/im-select/raw/master/im-select-win/out/x64/im-select.exe) and make it visible in `${PATH}`.

### Config

```lua
require("imtoggle").setup()
```
It enables the plugin by default.

### Enable

```vim
:lua require("imtoggle").enable()
```

### Disable

```vim
:lua require("imtoggle").disable()
```

## Acknowledgement

- [im-select](https://github.com/daipeihust/im-select)
- [neuims](https://github.com/Neur1n/neuims)
