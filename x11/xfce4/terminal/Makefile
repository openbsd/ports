# $OpenBSD: Makefile,v 1.49 2016/11/03 10:37:45 landry Exp $

COMMENT=	Xfce4 vte-based terminal

XFCE_VERSION=	0.8.1
REVISION=	0
XFCE_GOODIE=	xfce4-terminal

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes

LIB_DEPENDS=	x11/xfce4/libxfce4ui \
		devel/vte3

WANTLIB=	X11 X11-xcb atk-1.0 c gdk_pixbuf-2.0 gio-2.0 \
		ICE SM Xcomposite Xcursor Xdamage Xext Xfixes \
		Xi Xinerama Xrandr Xrender cairo expat fontconfig freetype \
		gmodule-2.0 gthread-2.0 m pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs \
		xcb xcb-render xcb-shm z xcb-util pcre2-8 iconv intl \
		glib-2.0 gobject-2.0 pango-1.0 xfce4util ffi graphite2 \
		harfbuzz startup-notification-1 xfce4ui-2 \
		atk-bridge-2.0 atspi cairo-gobject dbus-1 epoxy gdk-3 \
		gmp gnutls gtk-3 hogweed idn nettle p11-kit tasn1 vte-2.91

.include <bsd.port.mk>
