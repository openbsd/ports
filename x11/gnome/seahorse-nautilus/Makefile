# $OpenBSD: Makefile,v 1.14 2014/04/01 13:21:46 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GnuPG extension for nautilus(1)

GNOME_PROJECT=	seahorse-nautilus
GNOME_VERSION=	3.10.1
REVISION=	0

CATEGORIES=	security

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender assuan atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject cryptui dbus-1 dbus-glib-1
WANTLIB += expat ffi fontconfig freetype gck-1 gcr-3 gcr-base-3
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-keyring gobject-2.0 gpg-error gpgme graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz m nautilus-extension notify
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-shm z

LIB_DEPENDS=	x11/gnome/gcr \
		x11/gnome/nautilus \
		x11/gnome/libcryptui

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

MODGNOME_DESKTOP_FILE=	Yes

post-install:
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.{a,la}

.include <bsd.port.mk>
