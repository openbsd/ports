# $OpenBSD: Makefile,v 1.1.1.1 2015/07/21 15:51:37 jasper Exp $

COMMENT =		TI's open source compiler for MSP430 microcontrollers

V =			3_03_04_00
PKGNAME =		ti-msp430gcc-${V:S/_/./g}
GCC_V =			4.9.1
SHARED_LIBS +=  lto_plugin                0.0 # 0.0
CATEGORIES =		devel

HOMEPAGE =		http://www.ti.com/tool/msp430-gcc-opensource

# GPLv2+BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://software-dl.ti.com/msp430/msp430_public_sw/mcu/msp430/MSPGCC/$V/exports/
DIST_SUBDIR =		ti-msp430gcc-$V
DISTFILES =		msp430-gcc-source.tar.bz2 \
			msp430-gcc-support-files.zip

WANTLIB += c gmp m mpc mpfr stdc++ z

BUILD_DEPENDS =		archivers/bzip2 \
			archivers/unzip \
			devel/autogen
LIB_DEPENDS =		devel/libmpc

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--target=msp430-none-elf \
			--program-prefix=msp430- \
			--enable-languages=c \
			--disable-nls \
			--with-mpc=${LOCALBASE} \
			--with-mpfr=${LOCALBASE} \
			--with-gmp=${LOCALBASE}
# Prevents building gdbtk, and a whole bunch of patching
CONFIGURE_ARGS +=	--without-x
CONFIGURE_ENV =		TARGET=msp430-none-elf

USE_GMAKE =		Yes
SEPARATE_BUILD =	Yes

SUBST_VARS +=		DESTDIR GCC_V

WRKSRC =		${WRKDIR}/sources/tools/

post-extract:
.for c in dejagnu intl itcl tcl tk
	rm -r ${WRKSRC}/$c
.endfor

post-patch:
	cd ${WRKSRC} && autogen Makefile.def

pre-configure:
	${SUBST_CMD} ${WRKSRC}/libgloss/msp430/Makefile.in

post-install:
	rm ${PREFIX}/info/*
	${INSTALL_SCRIPT} ${WRKDIR}/msp430-gcc-support-files/*.ld \
		${PREFIX}/msp430-none-elf/lib/430/
	${INSTALL_DATA} ${WRKDIR}/msp430-gcc-support-files/*.ld \
		${PREFIX}/msp430-none-elf/include

.include <bsd.port.mk>
