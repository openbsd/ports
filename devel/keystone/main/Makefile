BROKEN-riscv64 =	llvm-build: error: invalid native target: 'RISCV' (not in project)

COMMENT =	multi-platform, multi-architecture assembler framework

REVISION =	1

SHARED_LIBS =	keystone	1.0

WANTLIB +=	c m
WANTLIB += ${COMPILER_LIBCXX}

MODULES =	devel/cmake \
		lang/python
MODPY_RUNDEP =	No

# atomics
COMPILER =	base-clang ports-clang

CONFIGURE_ARGS = -DBUILD_SHARED_LIBS=ON

NO_TEST =	Yes

pre-configure:
	find ${WRKSRC}/ -name "CMakeLists.txt" -type f -exec sed -i \
	-E 's/cmake_minimum_required\([[:space:]]*VERSION[[:space:]]+[^)]+\)/cmake_minimum_required(VERSION 3.5)/g' \
	{} \;
	find ${WRKSRC}/ -name "CMakeLists.txt" -type f -exec sed -i \
	-E 's/cmake_policy\(SET CMP0051 OLD\)/cmake_policy(SET CMP0051 NEW)/' \
	{} \;

.include <bsd.port.mk>
