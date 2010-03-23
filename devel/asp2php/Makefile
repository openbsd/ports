# $OpenBSD: Makefile,v 1.24 2010/03/23 20:48:21 jasper Exp $

COMMENT=	convert ASP code to PHP code

DISTNAME=	asp2php-0.77.3
PKGNAME=	${DISTNAME}p2
CATEGORIES=	devel www

HOMEPAGE=	http://asp2php.naken.cc/
MASTER_SITES=	http://downloads.mikekohn.net/asp2php/

# GPLv2
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB += c

FLAVORS=	no_x11
FLAVOR?=		

.if ${FLAVOR} != "no_x11"
USE_X11=	Yes
LIB_DEPENDS+=	gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2
ALL_TARGET=	all gui

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread-stubs xcb z
.endif

WRKDIST=	${WRKDIR}/asp2php

NO_REGRESS=	Yes

.include <bsd.port.mk>
