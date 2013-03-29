# $OpenBSD: Makefile,v 1.9 2013/03/29 19:45:00 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GnuPG extension for nautilus(1)

GNOME_PROJECT=	seahorse-nautilus
GNOME_VERSION=	3.8.0

CATEGORIES=	security

HOMEPAGE=	http://projects.gnome.org/seahorse/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender assuan atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject cryptui dbus-1 dbus-glib-1
WANTLIB += expat ffi fontconfig freetype gck-1 gcr-3 gcr-base-3
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-keyring gobject-2.0 gpg-error gpgme graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz icudata icule icuuc m nautilus-extension
WANTLIB += notify p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs stdc++ xcb
WANTLIB += xcb-render xcb-shm z

LIB_DEPENDS=	x11/gnome/gcr \
		x11/gnome/nautilus \
		x11/gnome/libcryptui

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

MODGNOME_DESKTOP_FILE=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static

post-install:
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.la

.include <bsd.port.mk>
