# OpenBSD makefile for: gnuplot
# Version required:     3.5
# Date created:         May 16 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/07/03 23:50:50 angelos Exp $
#

DISTNAME=	gnuplot-3.5
PKGNAME=	gnuplot-3.5
CATEGORIES=	math graphics
MASTER_SITES=	ftp://prep.ai.mit.edu/pub/gnu/

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	png\\.1\\.1:${PORTSDIR}/graphics/png

WRKSRC=		${WRKDIR}/gnuplot
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--exec-prefix=${PREFIX} \
		--includedir=${PREFIX}/include --libdir=${PREFIX}/lib \
		--with-x --without-linux-vga \
		--with-gnu-readline --with-lasergnu --with-png 

MAN1=		gnuplot.1 lasergnu.1

.include <bsd.port.mk>
