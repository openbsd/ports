COMMENT =	vector optimized library of kernels

DISTNAME =	volk-3.1.2
# deconflict with graphics/volk
PKGNAME =	lib${DISTNAME}
CATEGORIES =	devel

SHARED_LIBS +=	volk	0.0 # 0.0

# LGPLv3+
PERMIT_PACKAGE=	Yes

HOMEPAGE =	https://www.libvolk.org
SITES =		${HOMEPAGE}/releases/

# Uses C11 and C++17
COMPILER =	base-clang ports-gcc
MODULES =	devel/cmake \
		lang/python

LIB_DEPENDS =	devel/orc
WANTLIB +=	${COMPILER_LIBCXX} c m orc-0.4

BUILD_DEPENDS =	${MODPY_BUILD_DEPENDS} \
		www/py-mako${MODPY_FLAVOR}

CONFIGURE_ARGS = -DDOXYGEN_EXECUTABLE="false"

.include <bsd.port.mk>
