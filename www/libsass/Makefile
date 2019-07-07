# $OpenBSD: Makefile,v 1.9 2019/07/07 18:42:21 jasper Exp $

COMMENT =		C/C++ implementation of a Sass compiler

GH_ACCOUNT =		sass
GH_PROJECT =		libsass
GH_TAGNAME =		3.6.1

SHARED_LIBS +=  sass                      0.0 # 0.0

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =		http://libsass.org/

CATEGORIES =		www

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} m

# c++0x
COMPILER = base-clang ports-gcc

AUTOMAKE_VERSION =	1.15
AUTOCONF_VERSION =	2.69

CONFIGURE_STYLE =	autoreconf

USE_GMAKE =		Yes

MAKE_ENV =		CC="cc" \
			CXX="c++" \
			CXXFLAGS="${CXXFLAGS}" \
			BUILD="shared"

NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/sass/
	cd ${WRKSRC}/include && pax -rw . ${PREFIX}/include/
	rm ${PREFIX}/include/sass/*.in
	${INSTALL_DATA} ${WRKSRC}/src/support/libsass.pc ${PREFIX}/lib/pkgconfig/
	${INSTALL_DATA} ${WRKSRC}/lib/libsass.so \
		${PREFIX}/lib/libsass.so.${LIBsass_VERSION:R}.${LIBsass_VERSION:E}

.include <bsd.port.mk>
