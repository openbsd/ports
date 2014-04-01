# $OpenBSD: Makefile,v 1.80 2014/04/01 18:38:53 jasper Exp $

COMMENT=	API documentation browser for GNOME

GNOME_PROJECT=	devhelp
GNOME_VERSION=	3.12.0

SHARED_LIBS +=  devhelp-3                 0.0 # 0.0

CATEGORIES=	textproc

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject dbus-1 dbus-glib-1 enchant
WANTLIB += expat ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += geoclue gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz harfbuzz-icu icudata icui18n
WANTLIB += icuuc javascriptcoregtk-3.0 jpeg m orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs secret-1 soup-2.4 sqlite3 stdc++ webkit2gtk-3.0
WANTLIB += webp xcb xcb-render xcb-shm xml2 xslt z

MODULES=	devel/dconf \
		devel/gettext \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	x11/gnome/doc-utils
LIB_DEPENDS=	www/webkit,gtk3

# for convenience
RUN_DEPENDS +=	x11/gnome/devel-docs

MODGNOME_TOOLS +=	desktop-file-utils gtk-update-icon-cache

.include <bsd.port.mk>
