# OpenBSD makefile for: gnuplot
# Version required:     3.7
# Date created:         May 16 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.4 1999/02/01 23:29:35 angelos Exp $
#

DISTNAME=	gnuplot-3.7
PKGNAME=	gnuplot-3.7
CATEGORIES=	math graphics
MASTER_SITES=	ftp://ftp.gnuplot.vt.edu/pub/gnuplot/ \
		ftp://ftp.irisa.fr/pub/gnuplot/ \
		ftp://ftp.cc.monash.edu.au/pub/gnuplot/ \
		${MASTER_SITE_GNU}

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	png\\.1\\.1:${PORTSDIR}/graphics/png

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--exec-prefix=${PREFIX} \
		--includedir=${PREFIX}/include --libdir=${PREFIX}/lib \
		--with-x --without-linux-vga \
		--with-gnu-readline --with-lasergnu --with-png 

MAN1=		gnuplot.1 lasergnu.1

.include <bsd.port.mk>
