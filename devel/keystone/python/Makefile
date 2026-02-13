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

pre-configure:
	find ${WRKSRC}/../../ -name "CMakeLists.txt" -type f -exec sed -i \
	-E 's/cmake_minimum_required\([[:space:]]*VERSION[[:space:]]+[^)]+\)/cmake_minimum_required(VERSION 3.5)/g' \
	{} \;
	find ${WRKSRC}/../../ -name "CMakeLists.txt" -type f -exec sed -i \
	-E 's/cmake_policy\(SET CMP0051 OLD\)/cmake_policy(SET CMP0051 NEW)/' \
	{} \;

.include <bsd.port.mk>
