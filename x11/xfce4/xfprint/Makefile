# $OpenBSD: Makefile,v 1.41 2014/04/21 12:43:23 ajacoutot Exp $

COMMENT=	Xfce4 printing helper

XFCE_PROJECT=	xfprint
XFCE_VERSION=	4.6.1
REVISION=	23

MASTER_SITES=	http://archive.xfce.org/src/archive/${XFCE_PROJECT}/${XFCE_BRANCH}/
SHARED_LIBS=	xfprint	0.1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/xfce4/xfprint-plugins

CONFIGURE_ARGS=	--enable-cups \
		--enable-bsdlpr \
		--with-printcap=/etc/printcap

RUN_DEPENDS=	print/a2ps

LIB_DEPENDS=	x11/xfce4/libxfcegui4 \
		x11/xfce4/xfconf \
		print/cups,-libs

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 avahi-client
WANTLIB += avahi-common c cairo crypto cups dbus-1 dbus-glib-1
WANTLIB += expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += ssl startup-notification-1 xcb xcb-aux xcb-render xcb-shm
WANTLIB += xfce4util xfcegui4 xfconf-0 z

.include <bsd.port.mk>
