COMMENT=	interface components for OpenPGP

GNOME_PROJECT=	libcryptui
GNOME_VERSION=	3.12.2
REVISION=	11

SHARED_LIBS +=  cryptui              2.0      # 0.0

CATEGORIES=	security

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += assuan atk-1.0 atk-bridge-2.0 c cairo cairo-gobject
WANTLIB += dbus-1 dbus-glib-1 epoxy execinfo expat ffi fontconfig
WANTLIB += freetype fribidi gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnome-keyring gobject-2.0 gpg-error
WANTLIB += gpgme graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl
WANTLIB += jpeg m notify pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png xcb xcb-render xcb-shm z

MODULES=	x11/gnome \
		devel/dconf

MODGNOME_TOOLS=	gobject-introspection

LIB_DEPENDS=	x11/dbus-glib \
		security/gpgme \
		x11/gtk+3 \
		x11/gnome/libgnome-keyring \
		devel/libnotify

CONFIGURE_STYLE=gnu

BUILD_DEPENDS +=	security/gnupg>=2.2.23p1
RUN_DEPENDS +=		security/gnupg>=2.2.23p1

.include <bsd.port.mk>
