# $OpenBSD: Makefile,v 1.5 2012/11/19 15:06:51 sthen Exp $

COMMENT =		Fasttracker II inspired MOD tracker
DISTNAME =		milkytracker-0.90.85

CATEGORIES =		audio

HOMEPAGE =		http://www.milkytracker.org/

MAINTAINER =		Jacob Meuser <jakemsr@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

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
