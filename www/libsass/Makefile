# www/ruby-sassc contains an embedded version of libsass, please
# update it if there are security patches to libsass

COMMENT =		C/C++ implementation of a Sass compiler

GH_ACCOUNT =		sass
GH_PROJECT =		libsass
GH_TAGNAME =		3.6.6

EPOCH =			0

SHARED_LIBS +=  sass                      0.1 # 0.0

HOMEPAGE =		https://sass-lang.com/libsass/

CATEGORIES =		www

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} m

# c++0x
COMPILER = base-clang ports-gcc

DEBUG_PACKAGES =	${BUILD_PACKAGES}

AUTOMAKE_VERSION =	1.15
AUTOCONF_VERSION =	2.69

CONFIGURE_STYLE =	autoreconf

USE_GMAKE =		Yes

MAKE_ENV =		CC="${CC}" \
			CXX="${CXX}" \
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
