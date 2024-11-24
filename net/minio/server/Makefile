COMMENT =	object storage server compatible with Amazon S3 APIs

V =		2024-11-07T00-52-20Z
CID =		cefc43e4daa4cbb490ef6726ea374e26a93eb85e
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
