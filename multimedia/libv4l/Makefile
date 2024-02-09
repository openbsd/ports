COMMENT =		libv4l userspace library

# 1.26 dropped auto* for meson
VERSION =		1.24.1
DISTNAME =		v4l-utils-${VERSION}
PKGNAME =		libv4l-${VERSION}

SHARED_LIBS +=	v4l1		0.1 # 0.0
SHARED_LIBS +=	v4l2		0.1 # 0.0
SHARED_LIBS +=	v4l2rds		0.1 # 0.0
SHARED_LIBS +=	v4lconvert	0.1 # 0.0

CATEGORIES =		multimedia

HOMEPAGE =		https://git.linuxtv.org/v4l-utils.git

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c execinfo jpeg m pthread

SITES =			https://linuxtv.org/downloads/v4l-utils/

EXTRACT_SUFX =		.tar.bz2

BUILD_DEPENDS =		devel/argp-standalone
LIB_DEPENDS =		graphics/jpeg>=1.5.0v0

SEPARATE_BUILD =	Yes
LIBTOOL_FLAGS =		--tag=disable-static
CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS =	--disable-doxygen-doc \
			--disable-libdvbv5 \
			--disable-static
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib"

# CONFIG_SYS_WRAPPER is used to disable some syscall(2) usage
CPPFLAGS +=	-DCONFIG_SYS_WRAPPER
CPPFLAGS +=	-I${LOCALBASE}/include


AUTOCONF_VERSION =	2.71

.include <bsd.port.mk>
