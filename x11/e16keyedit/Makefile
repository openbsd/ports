# $OpenBSD: Makefile,v 1.22 2013/03/11 11:46:09 espie Exp $

COMMENT=	edit enlightenment's keybindings

DISTNAME=	e16keyedit-0.7
REVISION=	1
CATEGORIES=    	x11

# X11
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png z pthread-stubs xcb
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0
WANTLIB += GL Xxf86vm drm gthread-2.0 pthread xcb-render xcb-shm

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

MODULES=	devel/gettext
LIB_DEPENDS=	x11/gtk+2
RUN_DEPENDS=	enlightenment->=1.0.7:x11/enlightenment

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
