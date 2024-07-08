#!/bin/sh


DATADIR="/home/sepolia-erigon/.local/share"

##########
# Sepolia Erigon With Embedded Beacon Client Caplin #
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
    --caplin.backfilling="${CAPLIN_BACKFILLING}" \
    --caplin.archive="${CAPLIN_ARCHIVE}" \
    --beacon.api="${CAPLIN_BEACON_API}" \
    --beacon.api.addr=0.0.0.0 \
    --beacon.api.port=3500 \
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
    ${EXTRA_OPTS}
