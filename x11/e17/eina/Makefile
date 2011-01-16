# $OpenBSD: Makefile,v 1.6 2011/01/16 11:09:37 jasper Exp $

COMMENT =		EFL API for data types
DISTNAME =		eina-1.0.0.beta2

REVISION =		0
EPOCH=			0

SHARED_LIBS +=  eina                 1.0      # 1.0

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += 		m

MODULES =		converters/libiconv

USE_LIBTOOL =		Yes

CONFIGURE_ARGS =	--disable-doc \
			--enable-default-mempool
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
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
			ac_cv_func_dirfd=yes

.include <bsd.port.mk>
