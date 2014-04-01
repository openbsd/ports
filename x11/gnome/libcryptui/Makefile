# $OpenBSD: Makefile,v 1.23 2014/04/01 18:06:31 jasper Exp $

COMMENT=	interface components for OpenPGP

GNOME_PROJECT=	libcryptui
GNOME_VERSION=	3.10.1

SHARED_LIBS +=  cryptui              2.0      # 0.0

CATEGORIES=	security

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender assuan atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject dbus-1 dbus-glib-1 expat
WANTLIB += ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring gobject-2.0
WANTLIB += gpg-error gpgme graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += m notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

LIB_DEPENDS=	x11/dbus-glib \
		security/gpgme \
		x11/gtk+3 \
		x11/gnome/libgnome-keyring \
		devel/libnotify

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

MODGNOME_TOOLS +=	gobject-introspection
.include <bsd.port.mk>
