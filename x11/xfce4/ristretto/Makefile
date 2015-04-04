# $OpenBSD: Makefile,v 1.35 2015/04/04 09:21:09 ajacoutot Exp $

COMMENT=	Xfce4 lightweight image-viewer

XFCE_VERSION=	0.8.0
XFCE_GOODIE=	ristretto
REVISION=	1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
RUN_DEPENDS=	misc/shared-mime-info

LIB_DEPENDS=	x11/dbus-glib \
		graphics/libexif \
		x11/xfce4/libxfce4ui>=4.10.0 \
		x11/xfce4/xfconf>=4.10.0

WANTLIB=	X11 Xcomposite Xcursor Xdamage Xext Xfixes SM ICE \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1 \
		exif fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pthread xfce4util xfce4ui-1 z \
		xcb xfconf-0

.include <bsd.port.mk>
