# $OpenBSD: Makefile,v 1.16 2010/10/14 08:04:27 jasper Exp $

COMMENT=	Atmel AVR 8-bit RISC microcontrollers' XGCC

V=4.3.4

#GPLv3
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		c gmp mpfr
DIST_SUBDIR=gcc


EXTRACT_SUFX=	.tar.bz2
PKGNAME=	avr-gcc-${V}
REVISION=	0
DISTFILES=	gcc-core-${V}${EXTRACT_SUFX} \
		gcc-g++-${V}${EXTRACT_SUFX}
#EXTRACT_ONLY=	${DISTFILES}

MASTER_SITES= 		${MASTER_SITE_GCC:=releases/gcc-$(V)/}

BUILD_DEPENDS+=		:autoconf-2.13:devel/autoconf/2.13 \
			:bison-*:devel/bison		\
			::devel/metaauto		\
			::devel/avr/binutils

LIB_DEPENDS=		:gmp->=4.2:devel/gmp \
			::devel/mpfr

LANGS=c,c++
# dear autoconf, why do you suck so hard?
CONFIGURE_ENV=	INSTALL="install -c" \
		INSTALL_DATA="install -c -m 444" \
		INSTALL_SCRIPT="install -c -m 555"

CONFIGURE_ARGS+= 			\
	--disable-libssp		\
	--enable-languages=${LANGS} 	\
	--enable-cpp			\
	--with-gmp=${LOCALBASE}		\
	--with-mpfr=${LOCALBASE}

MAKE_FLAGS=	LANGUAGES="c c++" CFLAGS="-I/usr/local/include"
MAKE_ENV=	MACHINE_ARCH=avr

SEPARATE_BUILD=	concurrent
USE_GMAKE=	Yes
YACC=		bison

REGRESS_DEPENDS=::devel/dejagnu

SUBST_VARS=	V

WRKSRC=${WRKDIR}/gcc-${V}

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/avr/${V}/include*

.include <bsd.port.mk>
