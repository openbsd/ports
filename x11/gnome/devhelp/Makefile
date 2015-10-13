# $OpenBSD: Makefile,v 1.92 2015/10/13 15:12:31 ajacoutot Exp $

COMMENT=	API documentation browser for GNOME

GNOME_PROJECT=	devhelp
GNOME_VERSION=	3.18.1

SHARED_LIBS +=  devhelp-3            0.0      # 2.0

CATEGORIES=	textproc

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += dbus-1 drm enchant epoxy estdc++ expat ffi fontconfig
WANTLIB += freetype gbm gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gpg-error graphite2
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz harfbuzz-icu hyphen icudata icui18n icuuc
WANTLIB += javascriptcoregtk-4.0 jpeg lzma m notify orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs secret-1 soup-2.4 sqlite3 stdc++ webkit2gtk-4.0
WANTLIB += webp xcb xcb-dri2 xcb-glx xcb-render xcb-shape xcb-shm
WANTLIB += xcb-xfixes xml2 xslt z

MODULES=	devel/dconf \
		devel/gettext \
		lang/python \
		x11/gnome

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache

BUILD_DEPENDS=	x11/gnome/doc-utils
LIB_DEPENDS=	www/webkitgtk4

# for convenience
RUN_DEPENDS +=	x11/gnome/devel-docs

.include <bsd.port.mk>
