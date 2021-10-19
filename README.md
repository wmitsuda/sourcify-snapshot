# THIS REPOSITORY IS DEPRECATED!!!

Sourcify IPFS repository is now working as expected and there is no more need for this project.

---

# Sourcify Snapshot Image

This repository builds a static image containing part of Sourcify db from a backup.

The resulting docker image is a nginx service aimed to be used as a fallback when Sourcify's IPFS repository or centralized server is not reachable.

## Usage

Start:

```
docker run --rm -d -p 3006:80 --name sourcify-snapshot otterscan/sourcify-snapshot:2021-09
```

Stop:

```
docker stop sourcify-snapshot
```
