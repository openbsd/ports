# $OpenBSD: Makefile,v 1.24 2013/10/10 02:08:21 brad Exp $

COMMENT=	Atmel AVR 8-bit RISC microcontrollers' XGCC

V=4.3.4

#GPLv3
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c gmp mpfr
DIST_SUBDIR=gcc


EXTRACT_SUFX=	.tar.bz2
PKGNAME=	avr-gcc-${V}
REVISION=	1
DISTFILES=	gcc-core-${V}${EXTRACT_SUFX} \
		gcc-g++-${V}${EXTRACT_SUFX}
#EXTRACT_ONLY=	${DISTFILES}

MASTER_SITES= 	${MASTER_SITE_GCC:=releases/gcc-$(V)/}
DIST_SUBDIR=	gcc

BUILD_DEPENDS+=		devel/autoconf/2.13 \
			devel/bison		\
			devel/metaauto		\
			devel/avr/binutils

LIB_DEPENDS=		devel/gmp>=4.2 \
			devel/mpfr

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

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
USE_GROFF =	Yes
YACC=		bison

TEST_DEPENDS=devel/dejagnu

SUBST_VARS=	V

WRKSRC=${WRKDIR}/gcc-${V}

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/avr/${V}/include*

.include <bsd.port.mk>
