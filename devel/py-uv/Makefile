# $OpenBSD: Makefile,v 1.4 2019/06/25 20:25:20 sthen Exp $

COMMENT =		Python bindings to libuv

MODPY_EGG_VERSION =	1.3.0
DISTNAME =		pyuv-${MODPY_EGG_VERSION}
PKGNAME =		py-uv-${MODPY_EGG_VERSION}
REVISION =		2

CATEGORIES =	devel
HOMEPAGE =	https://github.com/saghul/pyuv

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread ${MODPY_WANTLIB} uv

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

LIB_DEPENDS =	devel/libuv

CFLAGS +=	-I${LOCALBASE}/include
MAKE_ENV +=	LIBUV_LIB_PATH=${LOCALBASE}/lib

.include <bsd.port.mk>
