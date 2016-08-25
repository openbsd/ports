# $OpenBSD: Makefile,v 1.2 2016/08/25 02:39:06 jsg Exp $

COMMENT=	gcc for arm-none-eabi cross-development, Linaro version

VERSION=	4.9-2016.02
#REVISION=	0
DISTNAME=	gcc-linaro-${VERSION}
EXTRACT_SUFX=	.tar.xz
PKGNAME=	${CONFIG}-gcc-linaro-${VERSION:S/-/./g}

SUBST_VARS+=	VERSION

WANTLIB=	c m stdc++ gmp mpfr mpc
DIST_SUBDIR=	gcc

MAKE_GXX=	No
MAKE_FORTRAN=	No
MAKE_OBJC=	No
MAKE_JAVA=	No
MAKE_ADA=	No

# The "base" prefix is somewhat arbitrary, and introduced mostly because
# portcheck complains about lines longer than 80 characters.
MASTER_SITE_BASE=http://releases.linaro.org/components
MASTER_SITES= 	${MASTER_SITE_BASE}/toolchain/gcc-linaro/${VERSION}/

BUILD_DEPENDS+=	devel/autoconf/2.13	\
		devel/bison				\
		devel/metaauto				\
		devel/arm-none-eabi/binutils

LIB_DEPENDS=	devel/mpfr devel/libmpc

RUN_DEPENDS=	devel/arm-none-eabi/binutils

LANGS=		c,c++
CC=		/usr/bin/gcc
CFLAGS=		-O2 -g

CONFIGURE_ARGS+=--enable-languages=${LANGS}	\
		--enable-multilib		\
		--enable-interwork		\
		--with-newlib			\
		--disable-lto			\
		--enable-cpp
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# cope with user settings in /etc/mk.conf
MAKE_FLAGS=	LANGUAGES="c c++" CFLAGS="-I${LOCALBASE}/include"
MAKE_ENV=	MACHINE_ARCH=arm-none-eabi

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
YACC=		bison

TEST_DEPENDS=devel/dejagnu

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/lib/gcc/${CONFIG}/${VERSION}/

.include <bsd.port.mk>
