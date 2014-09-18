# $OpenBSD: Makefile,v 1.27 2014/09/18 11:51:20 benoit Exp $

COMMENT =		convert source code to markup formats

DISTNAME =		highlight-3.19
CATEGORIES =		textproc converters

HOMEPAGE =		http://www.andre-simon.de/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m stdc++ ${MODLUA_WANTLIB}

MASTER_SITES =		${HOMEPAGE}/zip/
EXTRACT_SUFX =		.tar.bz2

USE_GMAKE =		Yes

MODULES =		lang/lua
MODLUA_SA =		Yes

BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		${MODLUA_LIB_DEPENDS}

MAKE_FILE =		makefile
MAKE_FLAGS =		CXX=${CXX} \
			LDFLAGS="-L${LOCALBASE}/lib" \
			CFLAGS+="`pkg-config --cflags ${MODLUA_DEP}`" \
			LUA_LIBS="`pkg-config --libs ${MODLUA_DEP}`"

NO_TEST =		Yes

SHARE_DIRS =		langDefs themes

post-extract:
	gunzip ${WRKSRC}/man/highlight.1.gz

do-configure:
	${SUBST_CMD} ${WRKSRC}/makefile ${WRKSRC}/man/highlight.1 \
		${WRKSRC}/src/makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/highlight ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/highlight
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/highlight
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/highlight
	${INSTALL_DATA} ${WRKSRC}/filetypes.conf \
		${PREFIX}/share/examples/highlight
.for d in ${SHARE_DIRS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/highlight/$d
	${INSTALL_DATA} ${WRKSRC}/$d/* ${PREFIX}/share/highlight/$d
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/man/highlight.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
