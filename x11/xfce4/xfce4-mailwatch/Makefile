# $OpenBSD: Makefile,v 1.26 2013/12/28 12:15:39 landry Exp $

COMMENT=	Xfce4 mailboxes monitor panel plugin

XFCE_VERSION=	1.2.0
XFCE_PLUGIN=	mailwatch

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS+=	security/gnutls
LIB_DEPENDS+=	security/libgcrypt

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 cairo expat ffi fontconfig freetype gcrypt
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gmp gnutls gobject-2.0 gpg-error gthread-2.0 gtk-x11-2.0
WANTLIB += hogweed m nettle p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += tasn1 xcb xcb-aux xcb-render xcb-shm xfce4util
WANTLIB += z harfbuzz exo-1 graphite2 xfce4ui-1

.include <bsd.port.mk>
