# $OpenBSD: Makefile,v 1.14 2013/03/11 11:46:11 espie Exp $

COMMENT=	interface components for OpenPGP

GNOME_PROJECT=	libcryptui
GNOME_VERSION=	3.6.0

SHARED_LIBS +=	cryptui              2.0      # .0.0

CATEGORIES=	security

HOMEPAGE=	http://live.gnome.org/Seahorse/libcryptui/

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm assuan
WANTLIB += atk-1.0 c cairo cairo-gobject dbus-1 dbus-glib-1 drm
WANTLIB += expat fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring gobject-2.0
WANTLIB += gpg-error gpgme gthread-2.0 gtk-3 m notify pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs xcb xcb-render xcb-shm z ffi stdc++
WANTLIB += atk-bridge-2.0 atspi harfbuzz icudata icule icuuc

LIB_DEPENDS=	x11/dbus-glib \
		security/gpgme \
		x11/gtk+3 \
		x11/gnome/libgnome-keyring>=3.6.0 \
		devel/libnotify

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

MODGNOME_TOOLS=	goi

CONFIGURE_ARGS=	--disable-update-mime-database

.include <bsd.port.mk>
