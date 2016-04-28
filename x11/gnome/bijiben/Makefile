# $OpenBSD: Makefile,v 1.29 2016/04/28 11:13:15 ajacoutot Exp $

TRACKER_API=		1.0

COMMENT=		simple note editor

GNOME_PROJECT=		bijiben
GNOME_VERSION=		3.20.0
REVISION=		0

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject camel-1.2
WANTLIB += db dbus-1 drm ebackend-1.2 ecal-1.2 edataserver-1.2
WANTLIB += edataserverui-1.2 enchant epoxy expat ffi fontconfig
WANTLIB += freetype gbm gck-1 gcr-base-3 gcr-ui-3 gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0 goa-1.0
WANTLIB += gobject-2.0 gpg-error graphite2 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += harfbuzz-icu ical icalss icalvcal iconv icudata icui18n
WANTLIB += icuuc intl javascriptcoregtk-3.0 jpeg json-glib-1.0
WANTLIB += kvm lzma m nspr4 nss3 nssutil3 orc-0.4 p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png pthread pthread-stubs secret-1 smime3 softokn3
WANTLIB += soup-2.4 sqlite3 ssl3 stdc++ uuid webkitgtk-3.0 webp
WANTLIB += xcb xcb-dri2 xcb-glx xcb-render xcb-shape xcb-shm xcb-xfixes
WANTLIB += xml2 xslt z
WANTLIB += tracker-sparql-${TRACKER_API}
WANTLIB += lib/tracker-${TRACKER_API}/tracker-common
WANTLIB += lib/tracker-${TRACKER_API}/tracker-data

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		databases/evolution-data-server \
			www/webkit,gtk3 \
			x11/gnome/online-accounts \
			x11/gnome/tracker

# needs xdg-email
RUN_DEPENDS +=		devel/xdg-utils

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache \
			shared-mime-info yelp

.include <bsd.port.mk>
