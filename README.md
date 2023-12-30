# Rust RG353VS Hello

## Prerequisites
- Rust
- Zig


See Makefile for commands

# RG353 Build
`make zig`

# Deploy
- Run `make zig`
- Copy `RustGnuTest.sh` into `/ports` folder of SD card (the one that contains the ROMs)
- Copy `/target` to `/ports/rust-hello/target` of SD card
- Profit