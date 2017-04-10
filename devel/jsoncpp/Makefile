# $OpenBSD: Makefile,v 1.16 2017/04/10 11:45:26 sthen Exp $

COMMENT =		JSON parsing C++ API

GH_ACCOUNT =		open-source-parsers
GH_PROJECT =		jsoncpp
GH_TAGNAME =		1.8.0
SUBST_VARS +=		GH_TAGNAME

# no upstream revision
SHARED_LIBS =		jsoncpp 2.1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/open-source-parsers/jsoncpp/wiki

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# Public Domain / MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m ${LIBCXX}

MODULES =		devel/scons
MODSCONS_FLAGS =	platform=linux-gcc

MAKE_ENV +=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
			LIBjsoncpp_VERSION=${LIBjsoncpp_VERSION}

TEST_TARGET =		check

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/jsoncpp/json/
	${INSTALL_DATA} ${WRKSRC}/include/json/*.h \
	    ${PREFIX}/include/jsoncpp/json/
	${INSTALL_DATA} \
	    ${WRKSRC}/libs/linux-gcc-4.2.1/libjsoncpp.so.${LIBjsoncpp_VERSION} \
	    ${PREFIX}/lib/
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig/
	${SUBST_CMD} -c -o ${SHAREOWN} -g ${SHAREGRP} -m ${SHAREMODE} \
	    ${FILESDIR}/jsoncpp.pc.in ${PREFIX}/lib/pkgconfig/jsoncpp.pc
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jsoncpp/
	${INSTALL_DATA} ${WRKSRC}/{AUTHORS,LICENSE,NEWS.txt,README.md} \
	    ${PREFIX}/share/doc/jsoncpp/

# XXX: should be in the scons module?
do-test:
	${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} ${MODSCONS_ENV} \
	    ${MODSCONS_FLAGS} ${TEST_TARGET} ${TEST_LOG}

.include <bsd.port.mk>
