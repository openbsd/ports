# $OpenBSD: Makefile,v 1.7 2019/07/12 21:15:34 sthen Exp $

COMMENT = 	bootstrap compiler for the AVR32 toolchain
V = 		4.4.7
DISTNAME = 	avr32-gcc-${V}
PKGNAME = 	avr32-gcc-bootstrap-${V}

# GPLv3
PERMIT_PACKAGE =	Yes
REVISION =		1

WANTLIB = 		c gmp mpfr
DIST_SUBDIR = 		gcc
AUTOCONF_VERSION = 	2.59
CONFIGURE_ARGS = 	--disable-libssp \
			--disable-threads \
			--disable-libstdcxx-pch \
			--with-gmp=${LOCALBASE} \
			--with-mpfr-lib=${LOCALBASE} \
			--with-mpfr-include=${LOCALBASE} \
			--without-headers \
			--enable-languages=c \
			--exec-prefix=${PREFIX}/avr32/bootstrap \
			--with-local-prefix=${PREFIX}/avr32/bootstrap \
			--with-as=${LOCALBASE}/bin/avr32-as \
			--with-ld=${LOCALBASE}/bin/avr32-ld
WRKDIST = 		${WRKDIR}/gcc-${V}
BUILD_DEPENDS = 	devel/avr32/binutils \
			${MODGNU_AUTOCONF_DEPENDS}
RUN_DEPENDS = 		devel/avr32/binutils
LIB_DEPENDS = 		devel/gmp \
			devel/mpfr

CFLAGS +=		-fgnu89-inline

SEPARATE_BUILD =	Yes


# This file confuses 'make update-patches'
post-extract:
	rm ${WRKSRC}/gcc/config/avr32/avr32.c.orig

# Fix configure scripts missing configure.in patches
do-gen:
	cd ${WRKSRC}/gcc; ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/avr32/bootstrap/lib/gcc/avr32/${V}/include*

.include <bsd.port.mk>
