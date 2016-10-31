# $OpenBSD: Makefile,v 1.1.1.1 2016/10/31 14:57:48 ajacoutot Exp $

COMMENT=		GObject based library for rendering epub docs

GNOME_PROJECT=		libgepub
GNOME_VERSION=		0.4

CATEGORIES=		graphics

SHARED_LIBS +=  gepub                     0.0 # 0.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm archive
WANTLIB += atk-1.0 atk-bridge-2.0 atspi bz2 cairo cairo-gobject
WANTLIB += crypto dbus-1 drm enchant epoxy estdc++ expat ffi fontconfig
WANTLIB += freetype gbm gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi
WANTLIB += glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0 gpg-error
WANTLIB += graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz harfbuzz-icu hogweed hyphen
WANTLIB += iconv icudata icui18n icuuc idn intl javascriptcoregtk-4.0
WANTLIB += jpeg lz4 lzma lzo2 m nettle notify orc-0.4 p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs secret-1 soup-2.4 sqlite3
WANTLIB += stdc++ tasn1 webkit2gtk-4.0 webp xcb xcb-dri2 xcb-glx
WANTLIB += xcb-render xcb-shm xcb-xfixes xml2 xslt z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		www/webkitgtk4

.include <bsd.port.mk>
