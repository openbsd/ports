COMMENT =	astronomic computations as a library

DISTNAME =	libnova-0.15.0
REVISION =	1
SHARED_LIBS +=	nova	1.1	# unknown
CATEGORIES =	astro devel

HOMEPAGE =	https://libnova.sourceforge.net/

# LGPLv2
PERMIT_PACKAGE =	Yes

WANTLIB +=		c m

SITES =			${SITE_SOURCEFORGE:=libnova/}

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="${CFLAGS}"

.include <bsd.port.mk>
