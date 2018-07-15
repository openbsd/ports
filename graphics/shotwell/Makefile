# $OpenBSD: Makefile,v 1.98 2018/07/15 08:39:28 ajacoutot Exp $

COMMENT =		digital photo organizer

GNOME_VERSION =		0.28.4
GNOME_PROJECT =		shotwell
REVISION =		0

CATEGORIES =		graphics

HOMEPAGE =		https://wiki.gnome.org/Apps/Shotwell

SHARED_LIBS +=  shotwell-authenticator    0.0 # 0.0
SHARED_LIBS +=  shotwell-plugin-common    0.0 # 0.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL GLESv2 ICE SM X11 X11-xcb
WANTLIB += Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xt Xxf86vm aspell atk-1.0 atk-bridge-2.0
WANTLIB += atspi brotlicommon brotlidec c cairo cairo-gobject
WANTLIB += crypto curl dbus-1 drm enchant-2 epoxy exif exiv2 expat
WANTLIB += ffi fontconfig freetype fribidi gbm gck-1 gcr-base-3
WANTLIB += gcr-ui-3 gcrypt gdata gdk-3 gdk_pixbuf-2.0 gee-0.8
WANTLIB += gexiv2 gio-2.0 glapi glib-2.0 gmodule-2.0 goa-1.0 gobject-2.0
WANTLIB += gpg-error gphoto2 gphoto2_port graphite2 gstallocators-1.0
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstgl-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz harfbuzz-icu hyphen iconv
WANTLIB += icudata icui18n icuuc intl jasper javascriptcoregtk-4.0
WANTLIB += jpeg json-glib-1.0 lcms2 ltdl lzma m nghttp2 notify
WANTLIB += nspr4 nss3 nssutil3 oauth orc-0.4 p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png raw secret-1 smime3 soup-2.4 sqlite3 ssl ssl3 tasn1
WANTLIB += webkit2gtk-4.0 webp webpdemux woff2common woff2dec
WANTLIB += xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-render
WANTLIB += xcb-shm xcb-sync xcb-xfixes xml2 xshmfence xslt z

MODULES =		devel/dconf \
			x11/gnome

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache vala yelp

LIB_DEPENDS =		devel/libgdata \
			devel/libgee \
			graphics/libgexiv2 \
			graphics/libgphoto2 \
			graphics/libraw

CONFIGURE_STYLE =	gnu

post-install:
	rm ${PREFIX}/lib/shotwell/plugins/builtin/*.{,l}a

.include <bsd.port.mk>
