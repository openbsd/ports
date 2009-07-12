# $OpenBSD: Makefile,v 1.12 2009/07/12 20:55:19 ckuethe Exp $

COMMENT=	Atmel AVR 8-bit RISC microcontrollers' XGCC

V=4.2.2

#GPLv2+
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		c
DIST_SUBDIR=gcc

MAKE_GXX=No
MAKE_FORTRAN=No
MAKE_OBJC=No
MAKE_JAVA=No
MAKE_ADA=No

DISTNAME=	gcc-${V}
EXTRACT_SUFX=	.tar.bz2
PKGNAME=	avr-gcc-${V}p1

MASTER_SITES= 		${MASTER_SITE_GNU:=gcc/gcc-$(V)/}

BUILD_DEPENDS+=		:autoconf-2.13:devel/autoconf/2.13 \
			:bison-*:devel/bison		\
			::devel/metaauto		\
			::devel/avr/binutils

LANGS=c,c++
CC=/usr/bin/gcc
CFLAGS=-O2 -g

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

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/avr/${V}/include

.include <bsd.port.mk>
