# $OpenBSD: Makefile,v 1.19 2013/12/06 13:16:45 dlg Exp $

COMMENT =		EFL API for data types

VERSION = 		1.7.9
DISTNAME =		eina-${VERSION}
EPOCH =			1

SHARED_LIBS +=	eina                 3.0      # 8.6

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

TEST_TARGET = 		check-local

.include <bsd.port.mk>
