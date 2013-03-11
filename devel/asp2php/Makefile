# $OpenBSD: Makefile,v 1.33 2013/03/11 10:50:01 espie Exp $

COMMENT=	convert ASP code to PHP code

DISTNAME=	asp2php-0.77.3
REVISION=	7
CATEGORIES=	devel www

HOMEPAGE=	http://asp2php.naken.cc/
MASTER_SITES=	http://downloads.mikekohn.net/asp2php/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

FLAVORS=	no_x11
FLAVOR?=		

.if ${FLAVOR} != "no_x11"
LIB_DEPENDS +=	x11/gtk+2
WANTLIB +=	gdk-x11-2.0 gtk-x11-2.0
ALL_TARGET =	all gui

MODULES =	devel/gettext

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread-stubs xcb z gdk_pixbuf-2.0
WANTLIB += GL gthread-2.0 pthread xcb-render xcb-shm
.endif

WRKDIST=	${WRKDIR}/asp2php

NO_TEST=	Yes

.include <bsd.port.mk>
