# $OpenBSD: Makefile,v 1.1.1.1 2020/10/06 13:39:05 solene Exp $

V =		1.1.18pl202009192141
COMMENT =	factorio inspired base building game
DISTNAME =	shapezio-${V}
CATEGORIES =	games

HOMEPAGE =	https://github.com/tobspr/shapez.io/
MAINTAINER =	Solene Rapenne <solene@perso.pw>

# GPLv3
PERMIT_PACKAGE =Yes

MASTER_SITES =	http://distfiles-openbsd.perso.pw/

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/electron \
		x11/gtk+3,-guic

WRKDIST =	${WRKDIR}/shapez.io

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/shapez.io/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/128x128/apps/
	cp -r ${WRKSRC}/* ${PREFIX}/share/shapez.io/
	${INSTALL_DATA} ${FILESDIR}/shapezio.png \
	    ${PREFIX}/share/icons/hicolor/128x128/apps/
	${SUBST_CMD} -c -m ${SHAREMODE} -o ${SHAREOWN} -g ${SHAREGRP} \
	    ${FILESDIR}/shapezio.desktop \
	    ${PREFIX}/share/applications/shapezio.desktop


.include <bsd.port.mk>
