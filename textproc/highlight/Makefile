# $OpenBSD: Makefile,v 1.69 2020/05/15 06:45:55 benoit Exp $

COMMENT =		convert source code to markup formats

DISTNAME =		highlight-3.57
CATEGORIES =		textproc converters

HOMEPAGE =		http://www.andre-simon.de/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =		c m ${LIBCXX} ${MODLUA_WANTLIB}

MASTER_SITES =		${HOMEPAGE}/zip/
EXTRACT_SUFX =		.tar.bz2

USE_GMAKE =		Yes

MODULES =		lang/lua
MODLUA_SA =		Yes
MODLUA_VERSION =	5.3

BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		${MODLUA_LIB_DEPENDS}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# c++11
COMPILER =		base-clang ports-gcc

MAKE_FILE =		makefile
MAKE_FLAGS =		CXX=${CXX} \
			LDFLAGS="-L${LOCALBASE}/lib" \
			CFLAGS+="`pkg-config --cflags ${MODLUA_DEP}` -std=c++11 " \
			LUA_LIBS="`pkg-config --libs ${MODLUA_DEP}`"

NO_TEST =		Yes

do-configure:
	${SUBST_CMD} ${WRKSRC}/makefile ${WRKSRC}/man/highlight.1 \
		${WRKSRC}/src/makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/highlight ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/highlight
	${INSTALL_DATA} ${WRKSRC}/README.adoc ${PREFIX}/share/doc/highlight
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/highlight
	${INSTALL_DATA} ${WRKSRC}/filetypes.conf \
		${PREFIX}/share/examples/highlight
	${INSTALL_DATA_DIR} ${PREFIX}/share/highlight/{langDefs,themes}
	cd ${WRKSRC}/themes && pax -rw * ${PREFIX}/share/highlight/themes
	cd ${WRKSRC}/langDefs && pax -rw * ${PREFIX}/share/highlight/langDefs
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/man/highlight.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
