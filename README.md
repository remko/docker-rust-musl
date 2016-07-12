# [Rust musl `x86_64-linux` Docker Image](https://el-tramo.be/docker-rust-x86_64-linux-musl)

## About

This image provides a Rust compiler for compiling static (`musl`-based)
binaries for Linux `x86_64` targets.

This is useful for e.g. compiling Rust applications on Mac OS X that need to
run on Alpine Linux.

## Usage

To run `cargo-build --release` on a Cargo project in the current dir:

    docker run -v $PWD:/src remko/rust-x86_64-linux-musl

If you want to pass custom flags to `cargo`, or just want an interactive
shell:

    docker run -it -v $PWD:/src remko/rust-x86_64-linux-musl /bin/bash

    $ cargo build --target x86_64-unknown-linux-musl
    $ ...
