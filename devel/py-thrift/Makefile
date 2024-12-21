BROKEN-sparc64 = compact.h:52:18: error: invalid operands to binary expression
COMMENT =	Python bindings for the Apache Thrift RPC system

MODPY_DISTV =	0.16.0
REVISION =	2

DISTNAME =	thrift-${MODPY_DISTV}
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

MODPY_PYBUILD =	setuptools

# tests in the pypi distfile are missing various files present in
# https://github.com/apache/thrift/tree/master/lib/py/test
NO_TEST =	Yes

RUN_DEPENDS =	devel/py-six

.include <bsd.port.mk>
