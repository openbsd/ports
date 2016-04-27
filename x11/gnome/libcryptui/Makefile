# $OpenBSD: Makefile,v 1.29 2016/04/27 09:47:44 jasper Exp $

COMMENT=	interface components for OpenPGP

GNOME_PROJECT=	libcryptui
GNOME_VERSION=	3.12.2
REVISION=	3

SHARED_LIBS +=  cryptui              2.0      # 0.0

CATEGORIES=	security

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender assuan atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject dbus-1 dbus-glib-1 epoxy expat ffi fontconfig
WANTLIB += freetype gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-keyring gobject-2.0 gpg-error gpgme
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz m notify pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs xcb xcb-render xcb-shm z iconv intl

MODULES=	x11/gnome \
		devel/dconf

MODGNOME_TOOLS=	gobject-introspection

LIB_DEPENDS=	x11/dbus-glib \
		security/gpgme \
		x11/gtk+3 \
		x11/gnome/libgnome-keyring \
		devel/libnotify

# security/gpgme depends on either gnupg-1 or gnupg-2; we want 2.X
BUILD_DEPENDS +=	gnupg->=2:security/gnupg2
RUN_DEPENDS +=		gnupg->=2:security/gnupg2
CONFIGURE_ENV +=	ac_cv_path_GNUPG=${LOCALBASE}/bin/gpg2

.include <bsd.port.mk>
