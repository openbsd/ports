COMMENT =		messagepack (de)serializer

MODPY_EGG_VERSION =	1.0.5
EPOCH =			0
DISTNAME =		msgpack-${MODPY_EGG_VERSION}
PKGNAME =		py-msgpack-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		net textproc

HOMEPAGE =		https://msgpack.org/

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} m

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

BUILD_DEPENDS =		lang/cython${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
