# $OpenBSD: Makefile,v 1.17 2013/05/09 13:00:13 rpe Exp $

COMMENT =		EFL API for data types
VERSION = 		1.7.6
DISTNAME =		eina-${VERSION}
EPOCH=			1

SHARED_LIBS +=  eina                 3.0      # 8.6

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

# mempool
#			--enable-default-mempool
#			--enable-mempool-chained-pool
#			--enable-mempool-ememoa-fixed
#			--enable-mempool-ememoa-unknown
#			--enable-mempool-fixed-bitmap
#			--enable-mempool-pass-through
#			--enable-mempool-buddy
#			--enable-mempool-one-big
# perf ?
#			--enable-amalgamation
#			--with-internal-maximum-log-level=2
#			--disable-magic-debug
#			--disable-safety-checks
#			--disable-assert

CONFIGURE_ENV =		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

TEST_TARGET = 	check-local

.include <bsd.port.mk>
