# $OpenBSD: Makefile,v 1.11 2016/10/29 16:32:44 feinerer Exp $

COMMENT =	open decentralized synchronization utility

V =		0.14.9
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
MODGO_ENV =		PATH="${PORTPATH}" HOME="${PORTHOME}"

do-build:
	cd ${WRKSRC} && ${MODGO_CMD} run build.go \
		-version v${V} -no-upgrade

do-test:
	cd ${WRKSRC} && ${MODGO_CMD} run build.go test

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/syncthing ${PREFIX}/bin/
.for sec in 1 5 7
	${INSTALL_MAN} ${WRKSRC}/man/*.${sec} ${PREFIX}/man/man${sec}/
.endfor

.include <bsd.port.mk>
