CONFIG =	xtensa-lx106-elf
CATEGORIES +=	devel

# DEBUG_PACKAGES =        ${BUILD_PACKAGES}

# GPLv3
# For newlib: multiple copyrights, but basically BSD.
#   See: ${PREFIX}/share/doc/newlib
# For lx106-hal: MIT
PERMIT_PACKAGE =	Yes

# permits build on sparc64
COMPILER =		base-clang ports-clang

BUILD_DEPENDS +=	devel/bison \
			lang/gawk \
			sysutils/coreutils \
			textproc/gsed

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
YACC =			bison -y

CE_VARS =		"-mlongcalls -Os -g -free -fipa-pta"

INSTALLDIR =		"${LOCALBASE}/${CONFIG}"
CONFIGURE_STYLE ?=	simple
CONFIGURE_ENV +=	CFLAGS_FOR_TARGET=${CE_VARS} \
			CXXFLAGS_FOR_TARGET=${CE_VARS} \
			CFLAGS="-I${INSTALLDIR}/include -pipe -g" \
			LDFLAGS="-L${INSTALLDIR}/lib -g"
CONFIGURE_ARGS +=	--target="${CONFIG}" \
			--prefix="${INSTALLDIR}" \
			--disable-shared \
			--with-newlib \
			--enable-threads=no \
			--disable-__cxa_atexit \
			--disable-libgomp \
			--disable-libmudflap \
			--disable-nls \
			--disable-bootstrap \
			--enable-languages=c,c++ \
			--disable-lto \
			--disable-libstdcxx-verbose \
			--enable-static=yes

NO_TEST =		Yes
