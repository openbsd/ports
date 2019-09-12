# $OpenBSD: Makefile,v 1.5 2019/09/12 19:05:23 jsing Exp $

COMMENT =	global, versioned, peer-to-peer filesystem

V =		0.4.22
DISTNAME =	go-ipfs-$V
REVISION = 	0

CATEGORIES =	net
HOMEPAGE =	https://ipfs.io

# MIT
PERMIT_PACKAGE = Yes

WANTLIB =	c pthread

MASTER_SITES =	https://github.com/ipfs/go-ipfs/releases/download/v$V/
DISTFILES =	${DISTNAME}{go-ipfs-source}${EXTRACT_SUFX}

MODULES =	lang/go
ALL_TARGET =	github.com/ipfs/go-ipfs
SUBST_VARS =	VARBASE
EXTRACT_ONLY =

NO_TEST =	Yes

post-extract:
	mkdir -p ${WRKDIST}
	tar xzf "${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}" -C ${WRKDIST}

do-build:
	${MODGO_BUILD_CMD} -tags nofuse ${ALL_TARGET}/cmd/ipfs

.include <bsd.port.mk>
