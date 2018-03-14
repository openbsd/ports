# $OpenBSD: Makefile,v 1.89 2018/03/14 08:54:21 ajacoutot Exp $

COMMENT =		digital photo organizer

GNOME_VERSION =		0.28.0
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
WANTLIB += Xrandr Xrender Xt Xtst Xxf86vm atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject crypto curl dbus-1 drm
WANTLIB += enchant epoxy exif exiv2 expat ffi fontconfig freetype
WANTLIB += gbm gck-1 gcr-base-3 gcr-ui-3 gcrypt gdata gdk-3 gdk_pixbuf-2.0
WANTLIB += gee-0.8 gexiv2 gio-2.0 glapi glib-2.0 gmodule-2.0 goa-1.0
WANTLIB += gobject-2.0 gpg-error gphoto2 gphoto2_port graphite2
WANTLIB += gstallocators-1.0 gstapp-1.0 gstaudio-1.0 gstbadallocators-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstgl-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += harfbuzz-icu hyphen iconv icudata icui18n icuuc intl
WANTLIB += jasper javascriptcoregtk-4.0 jpeg json-glib-1.0 lcms2
WANTLIB += ltdl lzma m nghttp2 notify nspr4 nss3 nssutil3 oauth
WANTLIB += orc-0.4 p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png raw secret-1 smime3 soup-2.4
WANTLIB += sqlite3 ssl ssl3 tasn1 webkit2gtk-4.0 webp xcb xcb-dri2
WANTLIB += xcb-glx xcb-render xcb-shm xcb-xfixes xml2 xslt z

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
