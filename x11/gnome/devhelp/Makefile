# $OpenBSD: Makefile,v 1.86 2015/03/27 08:16:16 ajacoutot Exp $

COMMENT=	API documentation browser for GNOME

GNOME_PROJECT=	devhelp
GNOME_VERSION=	3.14.0
REVISION=	2

SHARED_LIBS +=  devhelp-3            0.0      # 2.0

CATEGORIES=	textproc

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += dbus-1 drm enchant estdc++ expat ffi fontconfig freetype
WANTLIB += gbm gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error graphite2 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz harfbuzz-icu icudata icui18n icuuc javascriptcoregtk-4.0
WANTLIB += jpeg m orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs secret-1 soup-2.4
WANTLIB += sqlite3 stdc++ webkit2gtk-4.0 webp xcb xcb-dri2 xcb-glx
WANTLIB += xcb-render xcb-shape xcb-shm xcb-xfixes xml2 xslt z

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
