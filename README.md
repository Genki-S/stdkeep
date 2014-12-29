# stdkeep

Keep your command output for fast retrieval.

## Background

Some commands take long time, and those are typically the ones we want to grep
the outputs. Life is tough.

Examples:

- `$ rails route`

## What it does

It keeps outputs of your commands as-is (including both stdout and stderr).
You can easily retrieve the outputs of previous commands by issuing:

```
$ stdkeep INDEX
```

where INDEX is the index of the command whose output you want to retrieve,
starting from 1 as the most recent command.

(If INDEX is not provided, it assumes INDEX is 1)

## Install

### Prerequisites

- Using zsh
- Using tmux

### Download

Download this repository wherever you like.
e.g.

```
$ git clone https://github.com/Genki-S/stdkeep ~/stdkeep
```

### Source it

In your `~/.zshrc` (assuming you downloaded this repository to `~/stdkeep`):

```
source ~/stdkeep/stdkeep.zsh
```

### Settings

#### Directory for log files

default: `${HOME}/.stdkeep`

```
__STDKEEP_LOG_DIR=DIRECTORY_OF_YOUR_CHOICE
```

## TODOs

This is in the very early stage of development.
These are things which might be useful:

- options like `--cmd` and `--cwd` to retrieve commands and CWDs
  - it is stored already
