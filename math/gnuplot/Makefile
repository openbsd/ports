# OpenBSD makefile for: gnuplot
# Version required:     beta336
# Date created:         May 16 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/17 04:30:57 angelos Exp $
#

DISTNAME=	gnuplot-beta336
PKGNAME=	gnuplot-336
CATEGORIES=	math graphics
MASTER_SITES=	http://www.ipc.chiba-u.ac.jp/~yamaga/gnuplot%2B/3.6base/

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
