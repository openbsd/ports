# $OpenBSD: Makefile,v 1.31 2021/09/04 17:25:44 danj Exp $

# probably also on (32-bit) arm
BROKEN-i386 =	pkg/disk/stat_other.go:40:91: cannot use st.Atim.Nsec (type int32) as type int64 in argument to strconv.FormatInt

COMMENT =	cli for minio

V =		2021-07-26T15-01-59Z
CID =		addaf66de8af5d865a6102320727e8a5dbcacdb6
SHORTCID =	${CID:C/(............).*/\1/}

MODGO_MODNAME =	github.com/minio/mc
MODGO_VERSION =	v0.0.0-${V:C/[-TZ]//g}-${SHORTCID}

DISTNAME =	mc-${MODGO_VERSION}
PKGNAME =	minioc-0.${V:C/T.*//:S/-//g}

MODGO_LDFLAGS =	-s -w \
		-X github.com/minio/mc/cmd.Version=${V:C/T([0-9]+)-([0-9]+)-([0-9]+)/T\1:\2:\3/} \
		-X github.com/minio/mc/cmd.ReleaseTag=RELEASE.${V} \
		-X github.com/minio/mc/cmd.CommitID=${CID} \
		-X github.com/minio/mc/cmd.ShortCommitID=${SHORTCID}

post-install:
	mv ${PREFIX}/bin/{mc,minioc}

.include "modules.inc"

.include <bsd.port.mk>
