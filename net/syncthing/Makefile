# $OpenBSD: Makefile,v 1.26 2019/05/04 21:46:17 sthen Exp $

COMMENT =	open decentralized synchronization utility

V =		1.1.1
DISTNAME =	syncthing-${V}
DISTFILES =	syncthing-source-v${V}${EXTRACT_SUFX}

CATEGORIES =	net
HOMEPAGE =	https://syncthing.net/

MAINTAINER =	Edd Barrett <edd@openbsd.org>

# MPL 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MASTER_SITES = https://github.com/syncthing/syncthing/releases/download/v${V}/

WRKDIST =		${WRKDIR}/syncthing
WRKSRC =		${WRKDIR}/go/src/github.com/syncthing/syncthing
SUBST_VARS +=		VARBASE

MODULES =		lang/go
MODGO_TYPE =		bin

do-build:
	cd ${WRKSRC} && ${MODGO_CMD} run build.go \
		-version v${V} -no-upgrade

# Some tests fail, but they are bugs in the test suite itself, not Syncthing.
# We are working with upstream to fix these:
# https://forum.syncthing.net/t/openbsd-test-debugging/12799
do-test:
	cd ${WRKSRC} && ${MODGO_CMD} run build.go test

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/* ${PREFIX}/bin/
.for sec in 1 5 7
	${INSTALL_MAN} ${WRKSRC}/man/*.${sec} ${PREFIX}/man/man${sec}/
.endfor

.include <bsd.port.mk>
