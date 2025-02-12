COMMENT =	object storage server compatible with Amazon S3 APIs

V =		2025-02-07T23-21-09Z
CID =		703f51164d3d0c44af41b0d86075a1f61e4779e7
SHORTCID =	${CID:C/(............).*/\1/}

MODGO_MODNAME =	github.com/minio/minio
MODGO_VERSION =	v0.0.0-${V:C/[-TZ]//g}-${SHORTCID}

DISTNAME =	minio-${MODGO_VERSION}
PKGNAME =	minio-0.${V:C/T.*//:S/-//g}

MODGO_LDFLAGS =	-s -w \
		-X github.com/minio/minio/cmd.Version=${V:C/T([0-9]+)-([0-9]+)-([0-9]+)/T\1:\2:\3/} \
		-X github.com/minio/minio/cmd.ReleaseTag=RELEASE.${V} \
		-X github.com/minio/minio/cmd.CommitID=${CID} \
		-X github.com/minio/minio/cmd.ShortCommitID=${SHORTCID}

.include "modules.inc"

.include <bsd.port.mk>
