BROKEN-riscv64 =	Unknown architecture riscv64

COMMENT =	Python bindings for keystone

MODPY_DISTV =	${GH_TAGNAME}
PKGNAME =	py-${DISTNAME}
REVISION =	7

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

WANTLIB +=	${COMPILER_LIBCXX} m

WRKSRC =	${WRKDIST}/bindings/python

COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/cmake/core
RUN_DEPENDS =	devel/keystone/main

NO_TEST =	Yes

.include <bsd.port.mk>
