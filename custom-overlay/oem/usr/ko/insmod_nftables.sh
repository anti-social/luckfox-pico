#!/bin/sh

MODULES_DIR="/oem/usr/ko"

# common
insmod $MODULES_DIR/ipv6.ko

# nf_tables deps
insmod $MODULES_DIR/libcrc32c.ko
insmod $MODULES_DIR/nfnetlink.ko

# nf_tables
insmod $MODULES_DIR/nf_tables.ko

# nf_tables reject
insmod $MODULES_DIR/nf_reject_ipv4.ko
insmod $MODULES_DIR/nf_reject_ipv6.ko
insmod $MODULES_DIR/nft_reject.ko
insmod $MODULES_DIR/nft_reject_inet.ko
insmod $MODULES_DIR/nft_reject_ipv4.ko

# nf_tables counter
insmod $MODULES_DIR/nft_counter.ko

# nf_tables log
insmod $MODULES_DIR/nft_log.ko

# nf_tables nat & masq
insmod $MODULES_DIR/nf_defrag_ipv4.ko
insmod $MODULES_DIR/nf_defrag_ipv6.ko
insmod $MODULES_DIR/nf_conntrack.ko
insmod $MODULES_DIR/nf_nat.ko
insmod $MODULES_DIR/nft_chain_nat.ko
insmod $MODULES_DIR/nft_nat.ko
insmod $MODULES_DIR/nft_masq.ko

