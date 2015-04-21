# $OpenBSD: Makefile,v 1.2 2015/04/21 18:53:16 sthen Exp $

COMMENT =	compiz configuration system library

V =		0.8.8
DISTNAME =	libcompizconfig-${V}
REVISION =	0

SHARED_LIBS =	compizconfig	0.0 # 0.0

MASTER_SITES =	http://releases.compiz.org/${V}/

WANTLIB += X11 lzma m pthread stdc++ xcb xml2 z

MODULES =	converters/libiconv \
		textproc/intltool

BUILD_DEPENDS =	x11/compiz/core
RUN_DEPENDS =	x11/compiz/core
LIB_DEPENDS =	textproc/libxml

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
