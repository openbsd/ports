# $OpenBSD: Makefile,v 1.12 2013/01/08 08:13:28 jasper Exp $

COMMENT =		EFL API for data types
VERSION = 		1.7.4
DISTNAME =		eina-${VERSION}
REVISION = 		1
EPOCH=			1

SHARED_LIBS +=  eina                 3.0      # 8.4

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += 		m pthread

MODULES =		converters/libiconv

USE_LIBTOOL =		Yes

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

FULLARCH =		${MACHINE_ARCH:S/amd64/x86_64/}
SUBST_VARS +=		FULLARCH VERSION

REGRESS_TARGET = 	check-local

.include <bsd.port.mk>
