# The V is the date of the GH_COMMIT
V =		2024.07.24
DISTNAME =	${GH_PROJECT}-${V}

COMMENT =	CMake module to enable sanitizers for binary targets
GH_ACCOUNT =	arsenm
GH_PROJECT =	sanitizers-cmake
GH_COMMIT =	0573e2ea8651b9bb3083f193c41eb086497cc80a

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake
COMPILER =	base-clang ports-gcc

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/cmake/Modules/
	${INSTALL_DATA} ${WRKSRC}/cmake/*.cmake \
	    ${PREFIX}/share/cmake/Modules/

.include <bsd.port.mk>
