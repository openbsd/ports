# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1999/08/10 19:09:58 espie Exp $

PKGNAME=	teTeX_base-1.0.6
CATEGORIES=	print
DIST_SUBDIR=	teTeX
MASTER_SITES=	${MASTER_SITE_TEX_CTAN}
MASTER_SITE_SUBDIR=	systems/unix/teTeX/1.0/distrib/sources
DISTFILES=	${TETEX_SRC} 
WRKSRC=${WRKDIR}/teTeX-1.0

TETEX_SRC=teTeX-src-1.0.6.tar.gz

RUN_DEPENDS=${PREFIX}/share/texmf/ls-R:${PORTSDIR}/print/teTeX/texmf

BUILD_DEPENDS=${PREFIX}/share/texmf/ls-R:${PORTSDIR}/print/teTeX/texmf

LIB_DEPENDS=png.1.3:${PORTSDIR}/graphics/png \
	Xaw3d.6.1:${PORTSDIR}/x11/Xaw3d

PNGDIR=${PREFIX}

GNU_CONFIGURE=yes
CONFIGURE_ARGS=--disable-multiplatform --without-texinfo \
	--with-system-ncurses --with-system-zlib --with-system-pnglib \
	--with-pnglib-libdir=${PNGDIR}/lib --with-pnglib-include=${PNGDIR}/include 
CONFIGURE_ENV=YACC=yacc

INSTALL_INFO=	/usr/bin/install-info
SEPARATE_BUILD=concurrent

.include <bsd.port.mk>
