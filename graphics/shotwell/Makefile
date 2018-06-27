# $OpenBSD: Makefile,v 1.94 2018/06/27 21:03:54 espie Exp $

COMMENT =		digital photo organizer

GNOME_VERSION =		0.28.3
GNOME_PROJECT =		shotwell
REVISION =		1

CATEGORIES =		graphics

HOMEPAGE =		https://wiki.gnome.org/Apps/Shotwell

SHARED_LIBS +=  shotwell-authenticator    0.0 # 0.0
SHARED_LIBS +=  shotwell-plugin-common    0.0 # 0.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL GLESv2 ICE SM X11 X11-xcb
WANTLIB += Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xt Xxf86vm aspell atk-1.0 atk-bridge-2.0
WANTLIB += atspi brotlicommon brotlidec c cairo cairo-gobject crypto
WANTLIB += curl dbus-1 drm enchant-2 epoxy exif exiv2 expat ffi
WANTLIB += fontconfig freetype fribidi gbm gck-1 gcr-base-3 gcr-ui-3
WANTLIB += gcrypt gdata gdk-3 gdk_pixbuf-2.0 gee-0.8 gexiv2 gio-2.0
WANTLIB += glapi glib-2.0 gmodule-2.0 goa-1.0 gobject-2.0 gpg-error
WANTLIB += gphoto2 gphoto2_port graphite2 gstallocators-1.0 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstgl-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz harfbuzz-icu hyphen iconv icudata icui18n
WANTLIB += icuuc intl jasper javascriptcoregtk-4.0 jpeg json-glib-1.0
WANTLIB += lcms2 ltdl lzma m nghttp2 notify nspr4 nss3 nssutil3
WANTLIB += oauth orc-0.4 p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png raw secret-1 smime3 soup-2.4
WANTLIB += sqlite3 ssl ssl3 tasn1 webkit2gtk-4.0 webp webpdemux
WANTLIB += woff2common woff2dec xcb xcb-dri2 xcb-glx xcb-render
WANTLIB += xcb-shm xcb-xfixes xml2 xslt z

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
