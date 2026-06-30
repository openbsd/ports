COMMENT =	6 degrees-of-freedom input devices C library

V =		1.2
DISTNAME =	libspnav-${V}

SHARED_LIBS +=	spnav                     0.0 # 0.4

CATEGORIES =	cad

WANTLIB += X11 m

# BSD
PERMIT_PACKAGE =	Yes

SITES =	https://github.com/FreeSpacenav/libspnav/releases/download/v${V}/

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

AUTOCONF_VERSION =	2.68
AUTOMAKE_VERSION =	1.16

CONFIGURE_ARGS =	--disable-opt

post-patch:
	${SUBST_CMD} ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
