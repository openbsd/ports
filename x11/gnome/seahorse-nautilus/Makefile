# $OpenBSD: Makefile,v 1.33 2019/07/07 11:20:54 ajacoutot Exp $

COMMENT=		GnuPG extension for nautilus(1)

GNOME_PROJECT=		seahorse-nautilus
GNOME_VERSION=		3.10.1
REVISION=		12

CATEGORIES=		security

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xtst assuan atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject cryptui dbus-1 dbus-glib-1 epoxy expat ffi
WANTLIB += fontconfig freetype fribidi gck-1 gcr-base-3 gcr-ui-3 gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-keyring gobject-2.0 gpg-error gpgme graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl m nautilus-extension
WANTLIB += notify p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread xcb xcb-render xcb-shm z

MODULES=		x11/gnome \
			devel/dconf

MODGNOME_TOOLS=		desktop-file-utils

LIB_DEPENDS=		x11/gnome/gcr \
			x11/gnome/nautilus \
			x11/gnome/libcryptui

CONFIGURE_STYLE=	gnu

# security/gpgme depends on either gnupg-1 or gnupg-2; we want 2.X
BUILD_DEPENDS +=	gnupg->=2:security/gnupg2
RUN_DEPENDS +=		gnupg->=2:security/gnupg2
CONFIGURE_ENV +=	ac_cv_path_GNUPG=${LOCALBASE}/bin/gpg2

post-install:
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.{a,la}

.include <bsd.port.mk>
