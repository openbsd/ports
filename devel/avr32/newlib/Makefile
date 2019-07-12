# $OpenBSD: Makefile,v 1.4 2019/07/12 21:15:34 sthen Exp $

COMMENT = 	Atmel AVR 32-bit C library
V = 		1.16.0
DISTNAME = 	avr32-newlib-${V}

# GPLv3/GPLv2/BSD
PERMIT_PACKAGE =	Yes

AUTOCONF_VERSION =	2.59
AUTOMAKE_VERSION =	1.9
CONFIGURE_ARGS +=	--enable-newlib-io-long-long \
        		--enable-newlib-io-long-double \
        		--enable-newlib-io-pos-args \
        		--enable-newlib-reent-small \
        		--enable-target-optspace
CONFIGURE_ENV += 	CC_FOR_TARGET="${LOCALBASE}/avr32/bootstrap/bin/avr32-gcc"
WRKDIST = 		${WRKDIR}/newlib-${V}
BUILD_DEPENDS = 	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/avr32/gcc-bootstrap

SEPARATE_BUILD = 	Yes

# Fix Makefile.in files missing Makefile.am patches.
do-gen:
.for _subdir in newlib/libc/machine/avr32 newlib/libc/machine \
	newlib/libc/sys/avr32 newlib/libc/sys
	cd ${WRKSRC}/${_subdir}; ${AUTOCONF_ENV} autoreconf -fi
.endfor

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/avr32/lib

.include <bsd.port.mk>
