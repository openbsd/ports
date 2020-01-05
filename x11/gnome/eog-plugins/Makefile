# $OpenBSD: Makefile,v 1.85 2020/01/05 20:03:32 jasper Exp $

# XXX the "postr" plugin needs postr which hasn't been ported yet

COMMENT=		plugins for EOG

GNOME_PROJECT=		eog-plugins
GNOME_VERSION=		3.26.5

CATEGORIES=		graphics

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += EGL X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 cairo
WANTLIB += cairo-gobject champlain-0.12 champlain-gtk-0.12 clutter-1.0
WANTLIB += clutter-gtk-1.0 cogl cogl-pango cogl-path
WANTLIB += crypto curl drm epoxy exempi exif expat ffi fontconfig
WANTLIB += freetype fribidi gbm gck-1 gcr-base-3 gcrypt gdata
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0 glapi
WANTLIB += glib-2.0 gmodule-2.0 gnome-desktop-3 goa-1.0 gobject-2.0
WANTLIB += gpg-error graphite2 gthread-2.0 gtk-3 harfbuzz iconv
WANTLIB += idn2 intl jpeg json-glib-1.0 lcms2 lzma m nghttp2 nspr4
WANTLIB += nss3 nssutil3 oauth p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0 pixman-1 plc4
WANTLIB += plds4 png psl pthread rsvg-2 smime3 soup-2.4 sqlite3
WANTLIB += ssl ssl3 unistring xcb xcb-dri2 xcb-dri3 xcb-present
WANTLIB += xcb-render xcb-shm xcb-sync xcb-xfixes xml2 xshmfence
WANTLIB += z brotlicommon brotlidec

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS=    	devel/libgdata \
			devel/libpeas \
			geo/libchamplain \
			graphics/libexif \
			x11/gnome/online-accounts

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/py-gobject3${MODPY_FLAVOR} \
			x11/gnome/eog

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/py-gobject3${MODPY_FLAVOR} \
			x11/gnome/eog

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

CONFIGURE_STYLE=	gnu

post-install:
	rm ${PREFIX}/lib/eog/plugins/*.{a,la}

.include <bsd.port.mk>
