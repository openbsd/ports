COMMENT =	C library for double description method for convex polyhedra

GH_ACCOUNT =	cddlib
GH_PROJECT =	cddlib
GH_TAGNAME =	0.94m

SHARED_LIBS +=	cdd		0.1 # 1.2
SHARED_LIBS +=	cddgmp		0.1 # 1.2

CATEGORIES =	math

HOMEPAGE =	https://www.inf.ethz.ch/personal/fukudak/cdd_home/

MAINTAINER =		Dimitri Karamazov <deserter666@danwin1210.me>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c gmp

LIB_DEPENDS =		devel/gmp

USE_GMAKE =		Yes

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

NO_TEST =		Yes

.include <bsd.port.mk>
