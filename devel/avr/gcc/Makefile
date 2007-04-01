# $OpenBSD: Makefile,v 1.6 2007/04/01 16:44:19 sturm Exp $

COMMENT=	"Atmel AVR 8-bit RISC microcontrollers' XGCC"

V=3.4.5
FULL_VERSION=3.4-20050913

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

DISTNAME=	gcc-${FULL_VERSION}
EXTRACT_SUFX=	.tar.bz2
PKGNAME=	avr-gcc-${V}p2

MASTER_SITE_GCC=	ftp://gcc.gnu.org/pub/gcc/ \
			ftp://ftp.uvsq.fr/pub/gcc/ \
			ftp://ftp.grolier.fr/pub/egcs/

MASTER_SITES= 		${MASTER_SITE_GCC:=snapshots/$(FULL_VERSION)/}

BUILD_DEPENDS+=		:autoconf-2.13*:devel/autoconf/2.13 \
			:bison-*:devel/bison		\
			::devel/metaauto		\
			::devel/avr/binutils

LANGS=c,c++
CC=/usr/bin/gcc
CFLAGS=-O2 -g

CONFIGURE_ARGS+= 			\
	--verbose 			\
	--enable-languages=${LANGS} 	\
	--enable-cpp

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
