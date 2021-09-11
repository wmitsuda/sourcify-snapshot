#!/bin/bash -e
SOURCIFY_SNAPSHOT_CID="QmWV29hqZfEhJSmT9FNPreS1d4bh2iaGpfN2Wz6EbHL1U9"
ipfs get -o sourcify-snapshot.tar.bz2 $SOURCIFY_SNAPSHOT_CID
