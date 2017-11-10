# $OpenBSD: Makefile,v 1.29 2017/11/10 15:52:21 ajacoutot Exp $

COMMENT=		GnuPG extension for nautilus(1)

GNOME_PROJECT=		seahorse-nautilus
GNOME_VERSION=		3.10.1
REVISION=		9

CATEGORIES=		security

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xtst assuan atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject cryptui dbus-1 dbus-glib-1 epoxy
WANTLIB += expat ffi fontconfig freetype gck-1 gcr-base-3 gcr-ui-3
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-keyring gobject-2.0 gpg-error gpgme graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl m nautilus-extension
WANTLIB += notify p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread xcb xcb-render xcb-shm z

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
