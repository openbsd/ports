COMMENT =	compiz configuration system library

V =		0.8.8
DISTNAME =	libcompizconfig-${V}
REVISION =	3

SHARED_LIBS =	compizconfig	0.0 # 0.0

MASTER_SITES =	http://releases.compiz.org/${V}/

WANTLIB += X11 iconv lzma m pthread ${COMPILER_LIBCXX} xcb xml2 z

COMPILER =		base-clang ports-gcc base-gcc

MODULES =	textproc/intltool

BUILD_DEPENDS =	x11/compiz/core
RUN_DEPENDS =	x11/compiz/core
LIB_DEPENDS =	converters/libiconv \
		textproc/libxml

LIBTOOL_FLAGS =	--tag=disable-static

BASESYSCONFDIR = ${LOCALBASE}/share/compiz

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --disable-protobuf
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@rm -f ${PREFIX}/lib/compiz/*.la \
	    ${PREFIX}/lib/compizconfig/backends/*.la

.include <bsd.port.mk>
