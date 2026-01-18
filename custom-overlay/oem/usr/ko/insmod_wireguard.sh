#!/bin/sh

MODULES_DIR="/oem/usr/ko"

# libchacha20poly1305 deps
insmod $MODULES_DIR/chacha-neon.ko
insmod $MODULES_DIR/poly1305-arm.ko

# wireguard deps
insmod $MODULES_DIR/ipv6.ko
insmod $MODULES_DIR/ip6_udp_tunnel.ko
insmod $MODULES_DIR/udp_tunnel.ko
insmod $MODULES_DIR/libchacha20poly1305.ko
insmod $MODULES_DIR/libcurve25519-generic.ko

insmod $MODULES_DIR/wireguard.ko
