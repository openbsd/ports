# $OpenBSD: Makefile,v 1.39 2021/08/14 07:01:23 tb Exp $

BROKEN-i386 =	github.com/tklauser/go-sysconf@v0.3.4/sysconf_openbsd.go:22:28: undefined: unix.RLIMIT_NPROC

COMMENT =	object storage server compatible with Amazon S3 APIs

V =		2021-05-27T20-38-04Z
CID =		89bb9f17d73882127203e07c63d288d77525f1c6
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
