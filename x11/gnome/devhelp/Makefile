# $OpenBSD: Makefile,v 1.94 2016/10/29 18:14:29 ajacoutot Exp $

COMMENT=	API documentation browser for GNOME

GNOME_PROJECT=	devhelp
GNOME_VERSION=	3.22.0

SHARED_LIBS +=  devhelp-3            0.0      # 2.0

CATEGORIES=	textproc

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1 drm
WANTLIB += enchant epoxy estdc++ expat ffi fontconfig freetype
WANTLIB += gbm gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0
WANTLIB += gmodule-2.0 gmp gnutls gobject-2.0 gpg-error graphite2
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz harfbuzz-icu hogweed hyphen iconv icudata
WANTLIB += icui18n icuuc idn intl javascriptcoregtk-4.0 jpeg lzma
WANTLIB += m nettle notify orc-0.4 p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += secret-1 soup-2.4 sqlite3 stdc++ tasn1 webkit2gtk-4.0
WANTLIB += webp xcb xcb-dri2 xcb-glx xcb-render xcb-shm xcb-xfixes
WANTLIB += xml2 xslt z

MODULES=	devel/dconf \
		lang/python \
		x11/gnome

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache

BUILD_DEPENDS=	x11/gnome/doc-utils
LIB_DEPENDS=	www/webkitgtk4

# for convenience
RUN_DEPENDS +=	x11/gnome/devel-docs

.include <bsd.port.mk>
