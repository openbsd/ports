# $OpenBSD: Makefile,v 1.20 2017/08/30 08:46:31 landry Exp $

COMMENT =	Xfce4 freedesktop.org compliant menu implementation

XFCE_PROJECT =	garcon
XFCE_VERSION =	0.6.1

PORTROACH=	limitw:1,even

SHARED_LIBS +=	garcon-1	0.0
SHARED_LIBS +=	garcon-gtk2-1	0.0 # 0.0
SHARED_LIBS +=	garcon-gtk3-1   0.0 # 0.0

HOMEPAGE=	http://www.xfce.org/projects/libraries/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	x11/xfce4
LIB_DEPENDS =	x11/xfce4/libxfce4util \
		x11/xfce4/libxfce4ui
WANTLIB =	xfce4util gio-2.0 gmodule-2.0 glib-2.0 gobject-2.0 gthread-2.0 \
		pcre pthread z ffi iconv intl
WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 graphite2
WANTLIB += gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread-stubs startup-notification-1 xcb
WANTLIB += xcb-render xcb-shm xcb-util xfce4ui-1
WANTLIB += atk-bridge-2.0 atspi cairo-gobject dbus-1 epoxy gdk-3
WANTLIB += gtk-3 xfce4ui-2

FAKE_FLAGS =	menudir=${PREFIX}/share/examples/garcon

.include <bsd.port.mk>
