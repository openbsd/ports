# $OpenBSD: Makefile,v 1.20 2002/05/13 23:31:25 espie Exp $

COMMENT=	"command-driven interactive function plotting program"

DISTNAME=	gnuplot-3.7.1
CATEGORIES=	math graphics
NEED_VERSION=	1.364
MASTER_SITES=	ftp://ftp.gnuplot.vt.edu/pub/gnuplot/ \
		ftp://ftp.irisa.fr/pub/gnuplot/ \
		ftp://ftp.cc.monash.edu.au/pub/gnuplot/ \
		${MASTER_SITE_GNU:=gnuplot/}

HOMEPAGE=	http://www.gnuplot.org/

LIB_DEPENDS=	png.2::graphics/png

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no modify"
PERMIT_PACKAGE_FTP=	"no modify"
PERMIT_DISTFILES_CDROM=	"no modify"
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	no_x11
FLAVOR?=

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--without-linux-vga --without-gd \
		--with-png --with-gnu-readline --with-lasergnu
NO_REGRESS=	Yes

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --without-x
.else
USE_X11=	Yes
CONFIGURE_ARGS+= --with-x
.endif

.include <bsd.port.mk>
