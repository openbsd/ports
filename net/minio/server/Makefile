# $OpenBSD: Makefile,v 1.40 2021/09/04 17:26:17 danj Exp $

BROKEN-i386 =	github.com/tklauser/go-sysconf@v0.3.4/sysconf_openbsd.go:22:28: undefined: unix.RLIMIT_NPROC

COMMENT =	object storage server compatible with Amazon S3 APIs

V =		2021-08-05T22-01-19Z
CID =		6c0757eea6ec3ca4b6f4635834b967ddbf98af9e
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

SUBST_VARS =	VARBASE

.include "modules.inc"

.include <bsd.port.mk>
