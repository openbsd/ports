# $OpenBSD: Makefile,v 1.14 2000/09/23 19:59:52 danh Exp $

DISTNAME=	gnuplot-3.7.1
CATEGORIES=	math graphics
NEED_VERSION=	1.334
MASTER_SITES=	ftp://ftp.gnuplot.vt.edu/pub/gnuplot/ \
		ftp://ftp.irisa.fr/pub/gnuplot/ \
		ftp://ftp.cc.monash.edu.au/pub/gnuplot/ \
		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= gnuplot

HOMEPAGE=	http://www.gnuplot.org/

LIB_DEPENDS=	png.1::graphics/png

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no modify"
PERMIT_PACKAGE_FTP=	"no modify"
PERMIT_DISTFILES_CDROM=	"no modify"
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	no_x11
FLAVOR?=

USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--without-linux-vga --without-gd \
		--with-png --with-gnu-readline --with-lasergnu

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --without-x
.else
USE_X11=	Yes
CONFIGURE_ARGS+= --with-x
.endif

.include <bsd.port.mk>
