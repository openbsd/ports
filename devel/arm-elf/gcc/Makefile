# $OpenBSD: Makefile,v 1.5 2009/03/14 14:47:28 espie Exp $

COMMENT=	gcc for arm-elf cross-development

VERSION=	3.4.5
FULL_VERSION=	3.4-20050913
DISTNAME=	gcc-${FULL_VERSION}
PKGNAME=	${CONFIG}-gcc-${VERSION}p1

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB=	c
DIST_SUBDIR=	gcc

MAKE_GXX=	No
MAKE_FORTRAN=	No
MAKE_OBJC=	No
MAKE_JAVA=	No
MAKE_ADA=	No

EXTRACT_SUFX=	.tar.bz2

MASTER_SITE_GCC=ftp://gcc.gnu.org/pub/gcc/ \
		ftp://ftp.uvsq.fr/pub/gcc/ \
		ftp://ftp.grolier.fr/pub/egcs/

MASTER_SITES= 	${MASTER_SITE_GCC:=snapshots/$(FULL_VERSION)/}

BUILD_DEPENDS+=	:autoconf-2.13:devel/autoconf/2.13	\
		::devel/bison				\
		::devel/metaauto			\
		::devel/arm-elf/binutils

LANGS=		c,c++
CC=		/usr/bin/gcc
CFLAGS=		-O2 -g

CONFIGURE_ARGS+=--enable-languages=${LANGS}	\
		--enable-multilib		\
		--enable-cpp

# cope with user settings in /etc/mk.conf
MAKE_FLAGS=	LANGUAGES="c c++" CFLAGS="-I/usr/local/include"
MAKE_ENV=	MACHINE_ARCH=arm-elf

SEPARATE_BUILD=	concurrent
USE_GMAKE=	Yes
YACC=		bison

REGRESS_DEPENDS=::devel/dejagnu

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/lib/gcc/${CONFIG}/${VERSION}/include

.include <bsd.port.mk>
