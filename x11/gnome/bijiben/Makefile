# $OpenBSD: Makefile,v 1.41 2017/09/23 11:41:31 sthen Exp $

TRACKER_API=		1.0

COMMENT=		simple note editor

GNOME_PROJECT=		bijiben
GNOME_VERSION=		3.24.2
REVISION=		0

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject camel-1.2
WANTLIB += dbus-1 drm ecal-1.2 edataserver-1.2
WANTLIB += enchant epoxy expat ffi fontconfig
WANTLIB += freetype gbm gck-1 gcr-base-3 gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0 goa-1.0
WANTLIB += gobject-2.0 gpg-error graphite2 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += hyphen ical icalss icalvcal iconv icudata icui18n icuuc
WANTLIB += intl javascriptcoregtk-4.0 jpeg
WANTLIB += json-glib-1.0 kvm lzma m notify nspr4 nss3 nssutil3
WANTLIB += orc-0.4 p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += secret-1 smime3 softokn3 soup-2.4 sqlite3 ssl3 ${COMPILER_LIBCXX}
WANTLIB += uuid webkit2gtk-4.0 webp xcb xcb-dri2
WANTLIB += xcb-glx xcb-render xcb-shm xcb-xfixes xml2 xslt z
WANTLIB += GLESv2 gstallocators-1.0 gstbadallocators-1.0 gstgl-1.0
WANTLIB += harfbuzz-icu tasn1
WANTLIB += tracker-sparql-${TRACKER_API}
WANTLIB += lib/tracker-${TRACKER_API}/tracker-common
WANTLIB += lib/tracker-${TRACKER_API}/tracker-data

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		databases/evolution-data-server \
			x11/gnome/online-accounts \
			x11/gnome/tracker

# needs xdg-email
RUN_DEPENDS +=		devel/xdg-utils

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache \
			shared-mime-info yelp

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS +=	--disable-Werror

# XXX
# cc1: error: unrecognized command line option "-Wno-suggest-attribute=format"
pre-configure:
	sed -i -e 's,-Wno-suggest-attribute=format,,g' ${WRKSRC}/configure

.include <bsd.port.mk>
