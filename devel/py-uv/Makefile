COMMENT =		Python bindings to libuv

MODPY_EGG_VERSION =	1.4.0
DISTNAME =		pyuv-${MODPY_EGG_VERSION}
PKGNAME =		py-uv-${MODPY_EGG_VERSION}
REVISION =		4

CATEGORIES =	devel
HOMEPAGE =	https://github.com/saghul/pyuv

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB} uv

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR =	python3

LIB_DEPENDS =	devel/libuv>=1.30.1

CFLAGS +=	-I${LOCALBASE}/include
MAKE_ENV +=	LIBUV_LIB_PATH=${LOCALBASE}/lib

.include <bsd.port.mk>
