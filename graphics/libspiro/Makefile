COMMENT =	simplifies the drawing of beautiful curves

V =		20221101
DISTNAME =	libspiro-dist-${V}
PKGNAME =	libspiro-${V}
WRKDIST =	${WRKDIR}/libspiro-${V}

SHARED_LIBS =	spiro	1.0	# 1.3

CATEGORIES =	graphics

HOMEPAGE =	https://github.com/fontforge/libspiro

# GPLv3+
PERMIT_PACKAGE = Yes

WANTLIB =	m

SITES =		https://github.com/fontforge/libspiro/releases/download/${V}/

# spiro fails to build using base libtool:
# cc: error: unsupported option '--mode=link'
USE_LIBTOOL =	gnu

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
