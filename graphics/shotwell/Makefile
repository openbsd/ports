# $OpenBSD: Makefile,v 1.64 2016/11/08 09:04:19 ajacoutot Exp $

COMMENT =		digital photo organizer

GNOME_VERSION =		0.25.0.1
GNOME_PROJECT =		shotwell

CATEGORIES =		graphics

HOMEPAGE =		https://wiki.gnome.org/Apps/Shotwell

SHARED_LIBS +=  shotwell-plugin-common    0.0 # 0.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1 drm
WANTLIB += enchant epoxy estdc++ exif exiv2 expat ffi fontconfig
WANTLIB += freetype gbm gck-1 gcr-base-3 gcr-ui-3 gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gee-0.8 gexiv2 gio-2.0 glapi glib-2.0
WANTLIB += gmodule-2.0 gmp gnutls gobject-2.0 gpg-error gphoto2
WANTLIB += gphoto2_port graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstfft-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz harfbuzz-icu
WANTLIB += hogweed hyphen iconv icudata icui18n icuuc idn intl
WANTLIB += jasper javascriptcoregtk-4.0 jpeg json-glib-1.0 lcms2
WANTLIB += ltdl lzma m nettle notify orc-0.4 p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs raw secret-1 soup-2.4 sqlite3 stdc++
WANTLIB += tasn1 webkit2gtk-4.0 webp xcb xcb-dri2 xcb-glx xcb-render
WANTLIB += xcb-shm xcb-xfixes xml2 xslt z

MODULES =		devel/dconf \
			x11/gnome

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache vala yelp

LIB_DEPENDS =		devel/json-glib \
			devel/libgee \
			graphics/libgexiv2 \
			graphics/libgphoto2 \
			graphics/libraw \
			www/webkitgtk4

CONFIGURE_STYLE =	gnu

post-install:
	rm ${PREFIX}/lib/shotwell/plugins/builtin/*.{,l}a

.include <bsd.port.mk>
