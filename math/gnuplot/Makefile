# $OpenBSD: Makefile,v 1.7 1999/04/13 19:21:57 brad Exp $

DISTNAME=	gnuplot-3.7
PKGNAME=	gnuplot-3.7
CATEGORIES=	math graphics
MASTER_SITES=	ftp://ftp.gnuplot.vt.edu/pub/gnuplot/ \
		ftp://ftp.irisa.fr/pub/gnuplot/ \
		ftp://ftp.cc.monash.edu.au/pub/gnuplot/ \
		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= gnuplot

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	png:${PORTSDIR}/graphics/png

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--exec-prefix=${PREFIX} \
		--includedir=${PREFIX}/include --libdir=${PREFIX}/lib \
		--with-x --without-linux-vga --without-gd \
		--with-gnu-readline --with-lasergnu --with-png 

.include <bsd.port.mk>
