# $OpenBSD: Makefile,v 1.20 2015/01/25 07:46:44 rpe Exp $

COMMENT =		EFL API for data types

VERSION = 		1.7.10
DISTNAME =		eina-${VERSION}
EPOCH =			1

SHARED_LIBS += eina                 4.0      # 8.10

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		m pthread

MODULES =		converters/libiconv

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
