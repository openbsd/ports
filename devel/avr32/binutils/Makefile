# $OpenBSD: Makefile,v 1.2 2014/01/17 19:54:17 stsp Exp $

COMMENT = 	Atmel AVR 32-bit binutils
V = 		2.23.1
DISTNAME = 	avr32-binutils-${V}

# GPLv3
PERMIT_PACKAGE_CDROM = 	Yes

WANTLIB = 		c z
DIST_SUBDIR = 		binutils
AUTOCONF_VERSION = 	2.64
AUTOMAKE_VERSION = 	1.11
BUILD_DEPENDS = 	devel/libtool
CONFIGURE_ARGS += 	--enable-commonbfdlib=no \
			--with-cross-host=yes \
			--disable-werror
WRKDIST = 		${WRKDIR}/binutils-${V}

# Fix configure scripts missing configure.in patches and Makefile.in
# files missing Makefile.am patches.
pre-configure:
.for _subdir in bfd binutils opcodes gprof gas ld
	cd ${WRKSRC}/${_subdir}; ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF}
.endfor
.for _subdir in gas ld
	cd ${WRKSRC}/${_subdir}; ${SETENV} ${AUTOCONF_ENV} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal
	cd ${WRKSRC}/${_subdir}; ${SETENV} ${AUTOCONF_ENV} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake
.endfor

post-configure:
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} all-bfd TARGET-bfd=headers
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} configure-host

.include <bsd.port.mk>
