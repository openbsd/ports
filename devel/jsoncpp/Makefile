# $OpenBSD: Makefile,v 1.29 2019/07/12 20:44:36 sthen Exp $

COMMENT =		JSON parsing C++ API

GH_ACCOUNT =		open-source-parsers
GH_PROJECT =		jsoncpp
GH_TAGNAME =		1.8.4
REVISION =		2

# no upstream revision
SHARED_LIBS =		jsoncpp 4.0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/open-source-parsers/jsoncpp/wiki

# Public Domain / MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/meson

TEST_ENV +=	LD_PRELOAD=${WRKBUILD}/libjsoncpp.so.${LIBjsoncpp_VERSION}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jsoncpp
	${INSTALL_DATA} ${WRKSRC}/{AUTHORS,LICENSE,README.md} \
		${PREFIX}/share/doc/jsoncpp/

.include <bsd.port.mk>
