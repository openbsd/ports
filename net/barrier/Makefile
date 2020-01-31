# $OpenBSD: Makefile,v 1.1.1.1 2020/01/31 23:32:54 abieber Exp $

COMMENT =		mouse and keyboard sharing utility

V =			2.3.2
DISTNAME =		deterministic-barrier-source
PKGNAME =		barrier-${V}
CATEGORIES =		net x11

MASTER_SITES =		https://github.com/debauchee/barrier/releases/download/v${V}/

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Core Qt5Gui Qt5Network Qt5Widgets
WANTLIB += SM X11 Xext Xi Xinerama Xrandr Xtst c crypto curl dns_sd
WANTLIB += m ssl

LIB_DEPENDS =		net/curl \
			net/avahi

WRKDIST =		${WRKDIR}/barrier

MODULES =		devel/cmake \
			x11/qt5

NO_TEST =		Yes

SLBST_VARS +=		LOCALBASE
SLBST_VARS +=		X11BASE

pre-configure:
	${SUBST_CMD} ${WRKDIST}/*.txt
do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/build-*/bin/barrier* ${PREFIX}/bin/
	mv ${PREFIX}/bin/barrier ${PREFIX}/bin/barrier-gui
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/barrier
	${INSTALL_DATA} ${WRKSRC}/doc/barrier.conf.exampl* \
		${PREFIX}/share/examples/barrier/
	${INSTALL_MAN} ${WRKSRC}/doc/barrierc.1 \
		${PREFIX}/man/man1/barrierc.1
	${INSTALL_MAN} ${WRKSRC}/doc/barriers.1 \
		${PREFIX}/man/man1/barriers.1

.include <bsd.port.mk>
