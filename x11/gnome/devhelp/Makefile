# $OpenBSD: Makefile,v 1.106 2017/10/31 16:31:53 ajacoutot Exp $

COMMENT=		API documentation browser for GNOME

GNOME_PROJECT=		devhelp
GNOME_VERSION=		3.26.0
REVISION=		0

SHARED_LIBS +=  devhelp-3            1.0      # 4.0

CATEGORIES=		textproc

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL GLESv2 ICE SM X11 X11-xcb
WANTLIB += Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xt Xtst Xxf86vm atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject dbus-1 drm enchant epoxy
WANTLIB += expat ffi fontconfig freetype gbm gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glapi glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gstallocators-1.0 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbadallocators-1.0 gstbase-1.0 gstfft-1.0 gstgl-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz harfbuzz-icu hyphen iconv
WANTLIB += icudata icui18n icuuc intl javascriptcoregtk-4.0 jpeg
WANTLIB += lzma m notify orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png secret-1 soup-2.4 sqlite3 tasn1 webkit2gtk-4.0
WANTLIB += webp xcb xcb-dri2 xcb-glx xcb-render xcb-shm xcb-xfixes
WANTLIB += xml2 xslt z

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache

BUILD_DEPENDS=		x11/gnome/doc-utils
LIB_DEPENDS=		www/webkitgtk4

# for convenience
RUN_DEPENDS +=		x11/gnome/devel-docs

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
