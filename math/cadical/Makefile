COMMENT =		CaDiCaL SAT Solver

GH_ACCOUNT =		arminbiere
GH_PROJECT =		cadical
GH_TAGNAME =		rel-3.0.1
REVISION =		0

SHARED_LIBS =		cadical	0.0

CATEGORIES =		math

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

MAKE_FILE =		makefile

USE_GMAKE =		Yes

CONFIGURE_STYLE =	simple

CONFIGURE_ARGS =	-shared -fPIC

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/build/cadical ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/build/mobical ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/src/cadical.hpp ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/build/libcadical.so \
		${PREFIX}/lib/libcadical.so.${LIBcadical_VERSION:R}.${LIBcadical_VERSION:E}

.include <bsd.port.mk>
