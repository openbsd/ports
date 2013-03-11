# $OpenBSD: Makefile,v 1.8 2013/03/11 11:46:12 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	GnuPG extension for nautilus(1)

GNOME_PROJECT=	seahorse-nautilus
GNOME_VERSION=	3.6.1

CATEGORIES=	security

HOMEPAGE=	http://projects.gnome.org/seahorse/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm assuan
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += cryptui dbus-1 dbus-glib-1 drm expat ffi fontconfig
WANTLIB += freetype gck-1 gcr-3 gcr-base-3 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring gobject-2.0
WANTLIB += gpg-error gpgme gthread-2.0 gtk-3 harfbuzz icudata
WANTLIB += icule icuuc m nautilus-extension notify p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs stdc++ xcb xcb-render xcb-shm z

LIB_DEPENDS=	x11/gnome/gcr>=3.6.0 \
		x11/gnome/nautilus>=3.6.0 \
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
