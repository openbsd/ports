# $OpenBSD: Makefile,v 1.74 2017/03/15 10:37:44 ajacoutot Exp $

COMMENT =		digital photo organizer

GNOME_VERSION =		0.25.92
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
WANTLIB += dbus-1 drm enchant epoxy estdc++ exif exiv2 expat ffi
WANTLIB += fontconfig freetype gbm gck-1 gcr-base-3 gcr-ui-3 gcrypt
WANTLIB += gdata gdk-3 gdk_pixbuf-2.0 gee-0.8 gexiv2 gio-2.0 glapi
WANTLIB += glib-2.0 gmodule-2.0 gmp gnutls goa-1.0 gobject-2.0
WANTLIB += gpg-error gphoto2 gphoto2_port graphite2 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz harfbuzz-icu hogweed hyphen iconv icudata
WANTLIB += icui18n icuuc idn2 intl jasper javascriptcoregtk-4.0
WANTLIB += jpeg json-glib-1.0 lcms2 ltdl lzma m nettle nghttp2
WANTLIB += notify nspr4 nss3 oauth orc-0.4 p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += raw secret-1 smime3 softokn3 soup-2.4 sqlite3 ssl ssl3
WANTLIB += stdc++ tasn1 unistring webkit2gtk-4.0 webp xcb xcb-dri2
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
