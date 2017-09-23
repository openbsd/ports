# $OpenBSD: Makefile,v 1.84 2017/09/23 11:41:31 sthen Exp $

COMMENT =		digital photo organizer

GNOME_VERSION =		0.26.3
GNOME_PROJECT =		shotwell
REVISION =		0

CATEGORIES =		graphics

HOMEPAGE =		https://wiki.gnome.org/Apps/Shotwell

SHARED_LIBS +=  shotwell-authenticator    0.0 # 0.0
SHARED_LIBS +=  shotwell-plugin-common    0.0 # 0.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject crypto curl
WANTLIB += dbus-1 drm enchant epoxy $(COMPILER_LIBCXX) exif exiv2 expat ffi
WANTLIB += fontconfig freetype gbm gck-1 gcr-base-3 gcr-ui-3 gcrypt
WANTLIB += gdata gdk-3 gdk_pixbuf-2.0 gee-0.8 gexiv2 gio-2.0 glapi
WANTLIB += glib-2.0 gmodule-2.0 goa-1.0 gobject-2.0 gpg-error
WANTLIB += gphoto2 gphoto2_port graphite2 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += harfbuzz-icu hyphen iconv icudata icui18n icuuc intl
WANTLIB += jasper javascriptcoregtk-4.0 jpeg json-glib-1.0 lcms2
WANTLIB += ltdl lzma m nghttp2 notify nspr4 nss3 oauth orc-0.4
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 plc4 plds4 png pthread pthread-stubs raw secret-1
WANTLIB += smime3 softokn3 soup-2.4 sqlite3 ssl ssl3 ${LIBECXX} webkit2gtk-4.0
WANTLIB += webp xcb xcb-dri2 xcb-glx xcb-render xcb-shm xcb-xfixes
WANTLIB += xml2 xslt z
WANTLIB += GLESv2 gstallocators-1.0 gstbadallocators-1.0 gstgl-1.0
WANTLIB += tasn1

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
