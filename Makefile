.PHONY: clean gnu

clean:
	rm -rf target

run: clean
	cargo run

muslabi:
	cargo build --release --target=arm-unknown-linux-gnueabi

arm: clean
	CARGO_TARGET_ARMV7_UNKNOWN_LINUX_GNUEABIHF_LINKER=armv7-unknown-linux-gnueabihf cargo build --release --target=armv7-unknown-linux-gnueabihf

gnu: clean
	CARGO_TARGET_X86_64_UNKNOWN_LINUX_GNU_LINKER=x86_64-unknown-linux-gnu-gcc cargo build --release --target=x86_64-unknown-linux-gnu

musl:
	CARGO_TARGET_X86_64_UNKNOWN_LINUX_MUSL_LINKER=x86_64-unknown-linux-musl cargo build --release --target=x86_64-unknown-linux-musl

zig:
	cargo zigbuild --target arm-unknown-linux-gnueabihf