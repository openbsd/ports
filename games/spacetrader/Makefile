V =		2.0.1
COMMENT =	interstellar trading strategy game
DISTNAME =	SpaceTraderSource${V:S/.//g}
PKGNAME =	spacetrader-${V}
EXTRACT_SUFX =	.zip
CATEGORIES =	games x11

HOMEPAGE =	https://www.spronck.net/spacetrader/index.html
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

SITES =		${SITE_SOURCEFORGE:=spacetraderwin/}

MODULES =	lang/mono

NO_TEST =	Yes

WRKDIST =	${WRKDIR}

do-build:
	ln -s ${LOCALBASE}/bin/xbuild ${WRKDIR}/bin/xbuild
	cd ${WRKSRC} && ${WRKDIR}/bin/xbuild /p:Configuration=Release

do-install:
	${SUBST_CMD} -c -m ${BINMODE} ${FILESDIR}/spacetrader \
		${PREFIX}/bin/spacetrader
	${INSTALL_DATA_DIR} ${PREFIX}/share/spacetrader
	${INSTALL_DATA} ${WRKSRC}/bin/Release/SpaceTrader.exe \
		${PREFIX}/share/spacetrader

.include <bsd.port.mk>
