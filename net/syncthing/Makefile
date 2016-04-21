# $OpenBSD: Makefile,v 1.1.1.1 2016/04/21 19:01:31 edd Exp $

COMMENT =	open decentralized synchronization utility

V =		0.12.22
DISTNAME =	syncthing-${V}
DISTFILES =	syncthing-source-v${V}${EXTRACT_SUFX}

CATEGORIES =	net
HOMEPAGE =	https://syncthing.net/

MAINTAINER =	Edd Barrett <edd@openbsd.org>

# MPL 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MASTER_SITES = https://github.com/syncthing/syncthing/releases/download/v${V}/

WRKSRC =		${WRKDIR}/go/src/github.com/syncthing/syncthing
SUBST_VARS +=		VARBASE

MODULES =		lang/go
MODGO_TYPE =		bin
MODGO_SUBDIR =		${WRKDIR}/syncthing

do-build:
	cd ${WRKSRC} && ${MODGO_CMD} run build.go \
		-version v${V} -no-upgrade

do-test:
	cd ${WRKSRC} && ${MODGO_CMD} run build.go test

do-install:
	# Note: Don't use INSTALL_PROGRAM. It strips, and go hates this.
	${INSTALL_SCRIPT} ${WRKSRC}/bin/syncthing ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/man/*.{1,5,7} ${PREFIX}/man/

.include <bsd.port.mk>
