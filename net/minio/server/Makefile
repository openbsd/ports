# $OpenBSD: Makefile,v 1.44 2022/02/07 23:51:52 danj Exp $

BROKEN-i386 =	github.com/tklauser/go-sysconf@v0.3.4/sysconf_openbsd.go:22:28: undefined: unix.RLIMIT_NPROC

COMMENT =	object storage server compatible with Amazon S3 APIs

V =		2022-02-05T04-40-59Z
CID =		22b72265816b6dff28b915d5a078f10dfa186c40
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
