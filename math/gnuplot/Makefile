# $OpenBSD: Makefile,v 1.10 2000/03/24 23:28:19 espie Exp $

DISTNAME=	gnuplot-3.7
PKGNAME=	gnuplot-3.7
CATEGORIES=	math graphics
NEED_VERSION=	 1.230
MASTER_SITES=	ftp://ftp.gnuplot.vt.edu/pub/gnuplot/ \
		ftp://ftp.irisa.fr/pub/gnuplot/ \
		ftp://ftp.cc.monash.edu.au/pub/gnuplot/ \
		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= gnuplot

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	"no modify"
PERMIT_PACKAGE_FTP=	"no modify"
PERMIT_DISTFILES_CDROM=	"no modify"
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	png::graphics/png

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--exec-prefix=${PREFIX} \
		--includedir=${PREFIX}/include --libdir=${PREFIX}/lib \
		--with-x --without-linux-vga --without-gd \
		--with-gnu-readline --with-lasergnu --with-png 

.include <bsd.port.mk>
