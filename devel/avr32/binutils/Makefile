# $OpenBSD: Makefile,v 1.4 2019/07/12 21:15:34 sthen Exp $

COMMENT = 	Atmel AVR 32-bit binutils
V = 		2.23.1
DISTNAME = 	avr32-binutils-${V}

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB = 		c z
DIST_SUBDIR = 		binutils
AUTOCONF_VERSION = 	2.64
AUTOMAKE_VERSION = 	1.11
BUILD_DEPENDS = 	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool
CONFIGURE_ARGS += 	--enable-commonbfdlib=no \
			--with-cross-host=yes \
			--disable-werror
WRKDIST = 		${WRKDIR}/binutils-${V}

# Fix configure scripts missing configure.in patches and Makefile.in
# files missing Makefile.am patches.
do-gen:
.for _subdir in bfd binutils opcodes gprof gas ld
	cd ${WRKSRC}/${_subdir}; ${AUTOCONF_ENV} autoreconf -fi
.endfor

post-configure:
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} all-bfd TARGET-bfd=headers
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} configure-host

.include <bsd.port.mk>
