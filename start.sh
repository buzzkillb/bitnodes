#!/bin/bash
# --- bitcoin mainnet: f9beb4d9 (db = 0) ---
python -u crawl.py conf/crawl.conf.default master > log/crawl.faf2efb4.master.out 2>&1 &
python -u crawl.py conf/crawl.conf.default slave > log/crawl.faf2efb4.slave.1.out 2>&1 &
python -u crawl.py conf/crawl.conf.default slave > log/crawl.faf2efb4.slave.2.out 2>&1 &
python -u crawl.py conf/crawl.conf.default slave > log/crawl.faf2efb4.slave.3.out 2>&1 &

python -u ping.py conf/ping.conf.default master > log/ping.faf2efb4.master.out 2>&1 &
python -u ping.py conf/ping.conf.default slave > log/ping.faf2efb4.slave.1.out 2>&1 &
python -u ping.py conf/ping.conf.default slave > log/ping.faf2efb4.slave.2.out 2>&1 &
python -u ping.py conf/ping.conf.default slave > log/ping.faf2efb4.slave.3.out 2>&1 &
python -u ping.py conf/ping.conf.default slave > log/ping.faf2efb4.slave.4.out 2>&1 &
python -u ping.py conf/ping.conf.default slave > log/ping.faf2efb4.slave.5.out 2>&1 &
python -u ping.py conf/ping.conf.default slave > log/ping.faf2efb4.slave.6.out 2>&1 &

python -u resolve.py conf/resolve.conf.default > log/resolve.faf2efb4.out 2>&1 &

python -u export.py conf/export.conf.default > log/export.faf2efb4.out 2>&1 &

python -u seeder.py conf/seeder.conf.default > log/seeder.faf2efb4.out 2>&1 &

python -u pcap.py conf/pcap.conf.default > log/pcap.faf2efb4.1.out 2>&1 &
python -u pcap.py conf/pcap.conf.default > log/pcap.faf2efb4.2.out 2>&1 &
python -u pcap.py conf/pcap.conf.default > log/pcap.faf2efb4.3.out 2>&1 &
