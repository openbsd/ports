COMMENT =		physics sandbox simulation

# LuaJIT requires USE_NOBTCFI
USE_NOBTCFI =		Yes

V =			98.2.365
PKGNAME =		powder-toy-${V}
DIST_TUPLE +=		github The-Powder-Toy The-Powder-Toy v${V} .
CATEGORIES =		games
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# GPL-3.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 bz2 c curl execinfo fftw3f
WANTLIB += jsoncpp luajit-5.1 m png

COMPILER =		base-clang ports-gcc

MODULES =		devel/meson

LIB_DEPENDS =		archivers/bzip2 \
			devel/jsoncpp \
			devel/sdl2 \
			graphics/png \
			lang/luajit \
			math/fftw3,-main,float \
			net/curl

CONFIGURE_ARGS +=	-Dworkaround_elusive_bzip2=true \
			-Dworkaround_elusive_bzip2_lib_dir=/usr/local/lib
CONFIGURE_ENV +=	LIBRARY_PATH=/usr/local/lib LDFLAGS="${LDFLAGS}"

CFLAGS +=		-I/usr/local/include
LDFLAGS +=		-lexecinfo

.include <bsd.port.mk>
