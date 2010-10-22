# $OpenBSD: Makefile,v 1.9 2010/10/22 15:20:04 jasper Exp $

COMMENT=	gcc for arm-elf cross-development

VERSION=	4.4.4
DISTNAME=	gcc-${VERSION}
PKGNAME=	${CONFIG}-gcc-${VERSION}

SUBST_VARS+=	VERSION

WANTLIB=	c gmp mpfr
DIST_SUBDIR=	gcc

MAKE_GXX=	No
MAKE_FORTRAN=	No
MAKE_OBJC=	No
MAKE_JAVA=	No
MAKE_ADA=	No

MASTER_SITES= 	${MASTER_SITE_GCC:=releases/gcc-$(VERSION)/}

BUILD_DEPENDS+=	:autoconf-2.13:devel/autoconf/2.13	\
		::devel/bison				\
		::devel/metaauto			\
		::devel/arm-elf/binutils

LIB_DEPENDS=	::devel/mpfr

LANGS=		c,c++
CC=		/usr/bin/gcc
CFLAGS=		-O2 -g

CONFIGURE_ARGS+=--enable-languages=${LANGS}	\
		--enable-multilib		\
		--enable-interwork		\
		--with-newlib			\
		--enable-cpp
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# cope with user settings in /etc/mk.conf
MAKE_FLAGS=	LANGUAGES="c c++" CFLAGS="-I/usr/local/include"
MAKE_ENV=	MACHINE_ARCH=arm-elf

SEPARATE_BUILD=	concurrent
USE_GMAKE=	Yes
USE_GROFF =	Yes
YACC=		bison

REGRESS_DEPENDS=::devel/dejagnu

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/lib/gcc/${CONFIG}/${VERSION}/

.include <bsd.port.mk>
