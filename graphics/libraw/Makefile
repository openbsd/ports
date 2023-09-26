COMMENT =		library for reading RAW files

DISTNAME =		LibRaw-0.21.1
PKGNAME =		${DISTNAME:L}
CATEGORIES =		graphics

SHARED_LIBS +=  raw                  5.0 # 23.0
SHARED_LIBS +=  raw_r                5.0 # 23.0

HOMEPAGE =		https://www.libraw.org/

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# LGPL v2.1 OR CDDL v1.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c jasper jpeg lcms2 m z

SITES =			https://www.libraw.org/data/

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		graphics/jasper \
			graphics/lcms2

SEPARATE_BUILD =	Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

CONFIGURE_STYLE =	autoreconf

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
