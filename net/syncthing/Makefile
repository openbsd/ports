COMMENT =	open decentralized synchronization utility

V =		1.27.8
DISTNAME =	syncthing-${V}
DISTFILES =	syncthing-source-v${V}${EXTRACT_SUFX}

CATEGORIES =	net
HOMEPAGE =	https://syncthing.net/

MAINTAINER =	Edd Barrett <edd@openbsd.org>
# MPL 2.0
PERMIT_PACKAGE = Yes

WANTLIB += c pthread

SITES = https://github.com/syncthing/syncthing/releases/download/v${V}/

WRKDIST =		${WRKDIR}/syncthing
WRKSRC =		${WRKDIR}/go/src/github.com/syncthing/syncthing

MODULES =		lang/go
MODGO_TYPE =		bin

# Syncthing contains a lot of stuff that end users wouldn't be interested in,
# so we package only these binaries.
ST_CMDS =	syncthing stdiscosrv strelaysrv

# If at any point quic is busted for our in-tree go version, then you can
# temporarily add `-tags noquic` to at least get syncthing building (albeit
# without quic support obviously). When you do that, some more tests will fail.
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
