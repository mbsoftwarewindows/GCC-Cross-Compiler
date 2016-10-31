# GCC-Cross-Compiler
Bash scripts to build GCC for i686-elf.


## Tested Host Platforms
  - Ubuntu :white_check_mark:
  - macOS Sierra :white_check_mark:

## Notes
### Ubuntu
  - Install the following libraries through apt-get:  binutils libmpfr-dev libmpc-dev libgmp-dev texinfo flex bison libcloog-isl-dev.

### macOS
  - Install Xcode through App Store.
  - Run ./config/download_prerequisites in root source directory (with modifications).  See download_prerequisites in this repository.
