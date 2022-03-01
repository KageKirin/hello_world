# Hello_world

This repo is proof-of-concept of the following:

* GENie-based project scaffolding
  GENie is used to generate the projects
  as well as for pulling in dependencies
* Library scaffolds
  The projects in `libs` are scaffolds,
  i.e. small GENie lua scripts that handle
  pulling in their source repo,
  setting up the GENie project,
  and exposing its includedirs, libdirs
  and link dependencies to their dependee projects
* Specific settings for building with clang on
  Windows, MacOS and Linux
* Specific settings for cross-platform builds using Zig.

## The interesting parts

### Clang

`scripts/clang.lua` duplicates the original settings for GCC with a few more options specific to Clang.

### Zig

`scripts/zig.lua` duplicates the settings for Clang with a few more options specific to Zig.

### Lib scaffold example

`libs/fmt/fmt.lua` is an example _scaffold_ used to pull in `{fmt}` and set up its dependency from the main project.

### Makefile

`make/projgen.make` is the control hub for generating projects through GENie, with special attention put into generating
makefiles and/or ninjafiles per compiler, platform and build system.

## Usage

### Generating projects

`make projgen` is the default command to generate projects targeted at the host platform.

`make` is the default command to recompile.

`make build` is the all-encompassing command that will

* pull the dependency repos
* generate the projects
* build the projects

Those 3 commands can take following parameters

* COMPILER={gcc,clang,zig}
* TARGET_OS={darwin,linux,windows,asmjs,wasm}
* PROJECT_TYPE={gmake,ninja,...}

#### Compiler

This indicates the compiler to use.
_clang_ is the default setting.
gcc, zig, and all other compiler toolchains with support built into GENie are possible.

#### Target OS

This indicates the targeted system.
The default is the host's OS.
Besides the major OSes, there is experimental support for asmjs/wasm through Emscripten.

#### Project type

This indicates the project type to generate.
Default is _ninja_.
_gmake_ offers the most compatibility and should be tried as fallback in case ninja doesn't work,
but it is not a multi-process build (single CPU usage: it's going to take a while).

## Limitations

All limitations from GENie and the respective compiler, build systems apply.

There are a few edge cases, like e.g. ninja files generated to target Windows will contain `cmd /c` command prefixes,
which are incompatible with everything not Windows.
Similarly, ninja files _not_ targeting Windows _will not_ contain `cmd /c` prefixes, making them probably incompatible
with DOS or PowerShell.
