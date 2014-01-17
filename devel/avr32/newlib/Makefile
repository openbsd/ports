# $OpenBSD: Makefile,v 1.1.1.1 2014/01/17 15:02:26 stsp Exp $

COMMENT = 	Atmel AVR 32-bit C library
V = 		1.16.0
DISTNAME = 	avr32-newlib-${V}

# GPLv3/GPLv2/BSD
PERMIT_PACKAGE_CDROM = 	Yes

AUTOCONF_VERSION =	2.59
CONFIGURE_ARGS +=	--enable-newlib-io-long-long \
        		--enable-newlib-io-long-double \
        		--enable-newlib-io-pos-args \
        		--enable-newlib-reent-small \
        		--enable-target-optspace
CONFIGURE_ENV += 	CC_FOR_TARGET="${LOCALBASE}/avr32/bootstrap/bin/avr32-gcc"
WRKDIST = 		${WRKDIR}/newlib-${V}
BUILD_DEPENDS = 	devel/avr32/gcc-bootstrap

SEPARATE_BUILD = 	Yes

# Fix Makefile.in files missing Makefile.am patches.
pre-configure:
.for _subdir in newlib/libc/machine/avr32 newlib/libc/machine \
	newlib/libc/sys/avr32 newlib/libc/sys
	cd ${WRKSRC}/${_subdir}; ${SETENV} ${AUTOCONF_ENV} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			aclocal -I ../.. -I ../../.. -I ../../../..
	cd ${WRKSRC}/${_subdir}; ${SETENV} ${AUTOCONF_ENV} autoconf
	cd ${WRKSRC}/${_subdir}; ${SETENV} ${AUTOCONF_ENV} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake
.endfor

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/avr32/lib

.include <bsd.port.mk>
