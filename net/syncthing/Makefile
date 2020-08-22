# $OpenBSD: Makefile,v 1.31 2020/08/22 21:27:00 edd Exp $

BROKEN-aarch64 =golang.org/x/Sys/cpu panic (illegal instruction)

COMMENT =	open decentralized synchronization utility

# Release candidate used so as to fix critical quic-go problem.
V =		1.9.0
DISTNAME =	syncthing-${V}rc4
DISTFILES =	syncthing-source-v${V}-rc.4${EXTRACT_SUFX}

CATEGORIES =	net
HOMEPAGE =	https://syncthing.net/

MAINTAINER =	Edd Barrett <edd@openbsd.org>

# MPL 2.0
PERMIT_PACKAGE = Yes

WANTLIB += c pthread

MASTER_SITES = https://github.com/syncthing/syncthing/releases/download/v${V}-rc.4/

WRKDIST =		${WRKDIR}/syncthing
WRKSRC =		${WRKDIR}/go/src/github.com/syncthing/syncthing
SUBST_VARS +=		VARBASE

MODULES =		lang/go
MODGO_TYPE =		bin

# Syncthing contains a lot of stuff that end users wouldn't be interested in,
# so we package only these binaries.
ST_CMDS =	syncthing stdiscosrv strelaysrv stcli

do-build:
.for cmd in ${ST_CMDS}
	cd ${WRKSRC} && ${MODGO_CMD} run build.go -version v${V} \
		-no-upgrade install ${cmd}
.endfor

# The tests occasionally fail with a kevent(2) failure. The issue is to do with
# the kqueue backend in the `notify` go module. We've not been unable to
# understand the issue, but we also cannot reproduce a kevent(2) failure
# outside of the tests. See: https://github.com/syncthing/syncthing/issues/6596
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
