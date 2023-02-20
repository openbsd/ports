COMMENT =	open decentralized synchronization utility

PKGNAME =	syncthing-1.23.2rc1
V =		1.23.2-rc.1
DISTNAME =	syncthing-${V}
DISTFILES =	syncthing-source-v${V}${EXTRACT_SUFX}

CATEGORIES =	net
HOMEPAGE =	https://syncthing.net/

MAINTAINER =	Edd Barrett <edd@openbsd.org>
# MPL 2.0
PERMIT_PACKAGE = Yes

WANTLIB += c pthread

MASTER_SITES = https://github.com/syncthing/syncthing/releases/download/v${V}/

WRKDIST =		${WRKDIR}/syncthing
WRKSRC =		${WRKDIR}/go/src/github.com/syncthing/syncthing
SUBST_VARS +=		VARBASE

MODULES =		lang/go
MODGO_TYPE =		bin

# Syncthing contains a lot of stuff that end users wouldn't be interested in,
# so we package only these binaries.
ST_CMDS =	syncthing stdiscosrv strelaysrv

do-build:
.for cmd in ${ST_CMDS}
	cd ${WRKSRC} && ${MODGO_CMD} run build.go -version v${V} \
		-no-upgrade install ${cmd}
.endfor

# Connections test hangs and times out. This doesn't appear to interfere with
# day-to-day running of Syncthing though.
# https://github.com/syncthing/syncthing/issues/8421
do-test:
	cd ${WRKSRC} && ${MODGO_CMD} run build.go test

do-install:
.for cmd in ${ST_CMDS}
	${INSTALL_PROGRAM} ${WRKSRC}/bin/${cmd} ${PREFIX}/bin/
.endfor
.for sec in 1 5 7
	${INSTALL_MAN} ${WRKSRC}/man/*.${sec} ${PREFIX}/man/man${sec}/
.endfor

.include <bsd.port.mk>
