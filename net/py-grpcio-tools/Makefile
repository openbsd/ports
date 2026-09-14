COMMENT =		Protobuf code generator for gRPC

MODPY_DISTV =		1.83.0
DISTNAME =		grpcio_tools-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/}
CATEGORIES =		net

HOMEPAGE =		https://grpc.io/docs/languages/python/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE =	Yes

# C++17
COMPILER =		base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} m

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		lang/cython

RUN_DEPENDS =		net/py-grpcio

.include <bsd.port.mk>
