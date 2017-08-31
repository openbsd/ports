# $OpenBSD: Makefile,v 1.22 2017/08/31 06:30:18 dcoppa Exp $

COMMENT =		JSON parsing C++ API

GH_ACCOUNT =		open-source-parsers
GH_PROJECT =		jsoncpp
GH_TAGNAME =		1.8.3

# no upstream revision
SHARED_LIBS =		jsoncpp 3.0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/open-source-parsers/jsoncpp/wiki

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# Public Domain / MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m ${COMPILER_LIBCXX}

MODULES =		devel/meson

TEST_ENV +=	LD_PRELOAD=${WRKBUILD}/libjsoncpp.so.${LIBjsoncpp_VERSION}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/meson.build

post-install:
	rm ${PREFIX}/lib/libjsoncpp.so
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jsoncpp
	${INSTALL_DATA} ${WRKSRC}/{AUTHORS,LICENSE,README.md} \
		${PREFIX}/share/doc/jsoncpp/

.include <bsd.port.mk>
