# $OpenBSD: Makefile,v 1.13 2000/09/22 21:27:29 brad Exp $

DISTNAME=	gnuplot-3.7.1
CATEGORIES=	math graphics
NEED_VERSION=	1.333
MASTER_SITES=	ftp://ftp.gnuplot.vt.edu/pub/gnuplot/ \
		ftp://ftp.irisa.fr/pub/gnuplot/ \
		ftp://ftp.cc.monash.edu.au/pub/gnuplot/ \
		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= gnuplot

LIB_DEPENDS=	png.1::graphics/png

HOMEPAGE=	http://www.gnuplot.org/

MAINTAINER=	danh@openbsd.org

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
		--with-gnu-readline --with-lasergnu

.if ${FLAVOR:L} == "no_x11"
CONFIGURE_ARGS+= --without-x
.else
USE_X11=	Yes
.endif

.include <bsd.port.mk>
