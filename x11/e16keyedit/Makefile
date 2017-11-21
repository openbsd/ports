# $OpenBSD: Makefile,v 1.24 2017/11/21 00:13:04 naddy Exp $

COMMENT=	edit enlightenment's keybindings

DISTNAME=	e16keyedit-0.7
REVISION=	3
CATEGORIES=    	x11

# X11
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo drm expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread xcb xcb-render xcb-shm z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

LIB_DEPENDS=	x11/gtk+2
RUN_DEPENDS=	enlightenment->=1.0.7:x11/enlightenment

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
