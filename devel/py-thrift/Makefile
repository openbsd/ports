COMMENT =	Python bindings for the Apache Thrift RPC system

MODPY_EGG_VERSION =	0.16.0
REVISION =	1

DISTNAME =	thrift-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

MAINTAINER =	Moritz Buhl <mbuhl@openbsd.org>

HOMEPAGE =	https://thrift.apache.org/

# Apache 2.0
PERMIT_PACKAGE = Yes

WANTLIB +=	${COMPILER_LIBCXX} m

COMPILER=	base-clang ports-gcc

MODULES =	lang/python
MODPY_PI =	Yes

FLAVOR =	python3
FLAVORS =	python3

MODPY_PYBUILD =	setuptools

# tests in the pypi distfile are missing various files present in
# https://github.com/apache/thrift/tree/master/lib/py/test
NO_TEST =	Yes

RUN_DEPENDS =	devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>
