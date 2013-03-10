# $OpenBSD: Makefile,v 1.7 2013/03/10 22:55:03 espie Exp $

COMMENT =		Fasttracker II inspired MOD tracker

DISTNAME =		milkytracker-0.90.85
REVISION =		0
CATEGORIES =		audio

HOMEPAGE =		http://www.milkytracker.org/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		SDL c m pthread stdc++ z

MASTER_SITES =		${HOMEPAGE}files/

# libjack accessed via dlopen()
RUN_DEPENDS =		audio/jack
BUILD_DEPENDS =		${RUN_DEPENDS}
LIB_DEPENDS =		devel/sdl

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.64
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/milkytracker
	cd ${WRKSRC}/docs && ${INSTALL_DATA} FAQ.html MilkyTracker.html \
		${PREFIX}/share/doc/milkytracker

.include <bsd.port.mk>
