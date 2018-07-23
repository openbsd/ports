# $OpenBSD: Makefile,v 1.80 2018/07/23 19:26:38 jasper Exp $

# XXX the "postr" plugin needs postr which hasn't been ported yet

COMMENT=		plugins for EOG

GNOME_PROJECT=		eog-plugins
GNOME_VERSION=		3.26.3

CATEGORIES=		graphics

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi cairo
WANTLIB += cairo-gobject champlain-0.12 champlain-gtk-0.12 clutter-1.0
WANTLIB += clutter-gtk-1.0 cogl cogl-pango cogl-path crypto curl dbus-1
WANTLIB += drm epoxy exif expat ffi fontconfig freetype gbm gck-1
WANTLIB += gcr-base-3 gcrypt gdata gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += girepository-1.0 glib-2.0 gmodule-2.0 goa-1.0 gobject-2.0
WANTLIB += gpg-error graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl
WANTLIB += json-glib-1.0 lzma m nghttp2 nspr4 nss3 oauth p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre peas-1.0 pixman-1
WANTLIB += plc4 plds4 png pthread smime3 nssutil3 soup-2.4
WANTLIB += sqlite3 ssl ssl3 xcb xcb-dri2 xcb-render xcb-shm
WANTLIB += xcb-xfixes xml2 z
WANTLIB += croco-0.6 exempi fribidi gnome-desktop-3 jpeg lcms2
WANTLIB += peas-gtk-1.0 rsvg-2 xcb-dri3 xcb-present xcb-sync xshmfence

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

LIB_DEPENDS=    	devel/libgdata \
			devel/libpeas \
			geo/libchamplain>=0.12.2 \
			graphics/libexif \
			x11/gnome/online-accounts

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/py-gobject3${MODPY_FLAVOR} \
			x11/gnome/eog>=3.26.0

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/py-gobject3${MODPY_FLAVOR} \
			x11/gnome/eog>=3.26.0

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

CONFIGURE_STYLE=	gnu

post-install:
	rm ${PREFIX}/lib/eog/plugins/*.{a,la}

.include <bsd.port.mk>
