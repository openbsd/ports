# $OpenBSD: Makefile,v 1.8 2013/12/05 23:44:01 edd Exp $

COMMENT =		Fasttracker II inspired MOD tracker

DISTNAME =		milkytracker-0.90.86
CATEGORIES =		audio

HOMEPAGE =		http://www.milkytracker.org/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		SDL c m pthread stdc++ z

MASTER_SITES =		${HOMEPAGE}files/

# libjack accessed via dlopen()
RUN_DEPENDS =		audio/jack \
			devel/desktop-file-utils \
			x11/gtk+2,-guic
BUILD_DEPENDS =		audio/jack
LIB_DEPENDS =		devel/sdl

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/milkytracker
	cd ${WRKSRC}/docs && ${INSTALL_DATA} FAQ.html MilkyTracker.html \
		${PREFIX}/share/doc/milkytracker
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/milkytracker
	${INSTALL_DATA} ${WRKSRC}/resources/music/*.xm \
		${PREFIX}/share/examples/milkytracker
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/resources/milkytracker.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/128x128/apps
	${INSTALL_DATA} ${WRKSRC}/resources/pictures/carton.png \
		${PREFIX}/share/icons/hicolor/128x128/apps/milkytracker.png
.include <bsd.port.mk>
