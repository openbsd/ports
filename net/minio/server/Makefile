# $OpenBSD: Makefile,v 1.43 2021/12/29 03:07:41 danj Exp $

BROKEN-i386 =	github.com/tklauser/go-sysconf@v0.3.4/sysconf_openbsd.go:22:28: undefined: unix.RLIMIT_NPROC

COMMENT =	object storage server compatible with Amazon S3 APIs

V =		2021-12-27T07-23-18Z
CID =		bb97eafa82544de7d78e8b614fe13f9754f58d6c
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
