# $OpenBSD: Makefile,v 1.30 2021/08/14 07:01:23 tb Exp $

# probably also on (32-bit) arm
BROKEN-i386 =	pkg/disk/stat_other.go:40:91: cannot use st.Atim.Nsec (type int32) as type int64 in argument to strconv.FormatInt

COMMENT =	cli for minio

V =		2021-05-19T05-29-47Z
CID =		8d65ee71302e662669bbbf57b834a4aa38c94bdc
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
