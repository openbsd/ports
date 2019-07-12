# $OpenBSD: Makefile,v 1.22 2019/07/12 20:51:10 sthen Exp $

COMMENT =		EFL API for data types

VERSION = 		1.7.10
DISTNAME =		eina-${VERSION}
EPOCH =			1

SHARED_LIBS += eina                 4.0      # 8.10

# LGPL v2.1
PERMIT_PACKAGE =	Yes

WANTLIB += 		iconv m pthread

LIB_DEPENDS =		converters/libiconv

CONFIGURE_ARGS =	--disable-doc \
			--enable-mempool-chained-pool=static \
			--disable-mempool-ememoa-fixed \
			--disable-mempool-ememoa-unknown \
			--enable-mempool-fixed-bitmap=static \
			--enable-mempool-pass-through=static \
			--disable-mempool-buddy \
			--enable-mempool-one-big=static

CONFIGURE_ENV =		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

.include <bsd.port.mk>
