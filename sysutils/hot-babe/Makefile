# $OpenBSD: Makefile,v 1.26 2018/06/01 14:24:55 sthen Exp $

COMMENT=	small utility which displays system activity

DISTNAME=	hot-babe-0.2.2
REVISION=	14
CATEGORIES=	sysutils

HOMEPAGE=	http://dindinx.net/hotbabe/

MAINTAINER=	Jan Lindblom <cl0wn@ludd.ltu.se>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread xcb z

MASTER_SITES=	${HOMEPAGE}/downloads/

LIB_DEPENDS=	x11/gtk+2

NO_TEST=	Yes

.include <bsd.port.mk>
