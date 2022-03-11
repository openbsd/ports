COMMENT =		libv4l userspace library

VERSION =		1.20.0
DISTNAME =		v4l-utils-${VERSION}
PKGNAME =		libv4l-${VERSION}
REVISION =		1

SHARED_LIBS +=	v4l1		0.0 # 0.0
SHARED_LIBS +=	v4l2		0.0 # 0.0
SHARED_LIBS +=	v4l2rds		0.0 # 0.0
SHARED_LIBS +=	v4lconvert	0.0 # 0.0

CATEGORIES =		multimedia

HOMEPAGE =		https://git.linuxtv.org/v4l-utils.git

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c execinfo jpeg m pthread

MASTER_SITES =		https://linuxtv.org/downloads/v4l-utils/

EXTRACT_SUFX =		.tar.bz2

BUILD_DEPENDS =		devel/argp-standalone
LIB_DEPENDS =		graphics/jpeg>=1.5.0v0

SEPARATE_BUILD =	Yes
LIBTOOL_FLAGS =		--tag=disable-static
CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS =	--disable-doxygen-doc \
			--disable-static
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

AUTOCONF_VERSION =	2.69

.include <bsd.port.mk>
