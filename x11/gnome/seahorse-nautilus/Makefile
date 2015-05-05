# $OpenBSD: Makefile,v 1.20 2015/05/05 17:00:20 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	GnuPG extension for nautilus(1)

GNOME_PROJECT=	seahorse-nautilus
GNOME_VERSION=	3.10.1
REVISION=	4

CATEGORIES=	security

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender assuan atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject cryptui dbus-1 dbus-glib-1 epoxy expat ffi
WANTLIB += fontconfig freetype gck-1 gcr-base-3 gcr-ui-3 gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring
WANTLIB += gobject-2.0 gpg-error gpgme graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz m nautilus-extension notify p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs xcb xcb-render xcb-shm z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

MODGNOME_TOOLS=	desktop-file-utils

LIB_DEPENDS=	x11/gnome/gcr \
		x11/gnome/nautilus \
		x11/gnome/libcryptui

# security/gpgme depends on either gnupg-1 or gnupg-2; we want 1.X
BUILD_DEPENDS+=	security/gnupg
RUN_DEPENDS+=	security/gnupg

post-install:
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.{a,la}

.include <bsd.port.mk>
