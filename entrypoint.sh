#!/bin/sh


DATADIR="/home/sepolia-erigon/.local/share"

##########
# Erigon #
##########

exec erigon --datadir=${DATADIR} \
    --chain=sepolia \
    --http.addr=0.0.0.0 \
    --http.port=8545 \
    --http.vhosts=* \
    --http.corsdomain=* \
    --ws \
    --private.api.addr=0.0.0.0:9090 \
    --internalcl \
    --lightclient.discovery.addr=0.0.0.0 \
    --lightclient.discovery.port=${CAPLIN_P2P_PORT} \
    --lightclient.discovery.tcpport=${CAPLIN_P2P_TCP_PORT} \
    --metrics \
    --metrics.addr=0.0.0.0 \
    --metrics.port=6060 \
    --pprof \
    --pprof.addr=0.0.0.0 \
    --pprof.port=6061 \
    --port=${P2P_PORT} \
    --torrent.port=47282 \
    --torrent.upload.rate=16mb \
    --torrent.download.rate=32mb \
    --db.size.limit=8TB \
    ${EXTRA_OPTS}
