# $OpenBSD: Makefile,v 1.4 2010/11/15 00:22:47 espie Exp $

COMMENT =		Fasttracker II inspired MOD tracker
DISTNAME =		milkytracker-0.90.80

CATEGORIES =		audio

HOMEPAGE =		http://www.milkytracker.net/

MAINTAINER =		Jacob Meuser <jakemsr@openbsd.org>

# GPL v3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		SDL c m pthread stdc++

MASTER_SITES =		${HOMEPAGE}/files/

# libjack accessed via dlopen()
RUN_DEPENDS =		audio/jack
BUILD_DEPENDS =		${RUN_DEPENDS}
LIB_DEPENDS =		devel/sdl

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/milkytracker
	cd ${WRKSRC}/docs && ${INSTALL_DATA} FAQ.html MilkyTracker.html \
		${PREFIX}/share/doc/milkytracker

.include <bsd.port.mk>
