# $OpenBSD: Makefile,v 1.25 2013/05/31 15:35:20 ajacoutot Exp $

COMMENT=	Xfce4 mailboxes monitor panel plugin

XFCE_VERSION=	1.1.0
XFCE_PLUGIN=	mailwatch
REVISION=	13

HOMEPAGE=	http://spuriousinterrupt.org/projects/mailwatch

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MASTER_SITES=	http://spuriousinterrupt.org/files/mailwatch/

MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS+=	security/gnutls
LIB_DEPENDS+=	x11/xfce4/libxfcegui4 \
		security/libgcrypt

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo drm expat ffi fontconfig freetype gcrypt
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gmp gnutls gobject-2.0 gpg-error gthread-2.0 gtk-x11-2.0
WANTLIB += hogweed m nettle p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += tasn1 xcb xcb-aux xcb-render xcb-shm xfce4util xfcegui4
WANTLIB += stdc++ z
WANTLIB += harfbuzz

.include <bsd.port.mk>
