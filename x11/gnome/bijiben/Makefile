# $OpenBSD: Makefile,v 1.10 2014/04/01 18:06:30 jasper Exp $

TRACKER_VERSION=	1.0

COMMENT=		simple note editor

GNOME_PROJECT=		bijiben
GNOME_VERSION=		3.12.0

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject clutter-1.0 clutter-gtk-1.0
WANTLIB += cogl cogl-pango dbus-1 dbus-glib-1 enchant expat ffi
WANTLIB += fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += geoclue gio-2.0 glib-2.0 gmodule-2.0 goa-1.0 gobject-2.0
WANTLIB += gpg-error graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstfft-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz harfbuzz-icu
WANTLIB += icudata icui18n icuuc javascriptcoregtk-3.0 jpeg json-glib-1.0
WANTLIB += kvm m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs secret-1 soup-2.4 sqlite3
WANTLIB += stdc++ uuid webkitgtk-3.0 webp xcb xcb-render xcb-shm
WANTLIB += xml2 xslt z zeitgeist-2.0 orc-0.4 cogl-path
WANTLIB += tracker-sparql-${TRACKER_VERSION}
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-common
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-data

LIB_DEPENDS=		graphics/clutter/clutter-gtk \
			productivity/zeitgeist \
			x11/gnome/online-accounts \
			x11/gnome/tracker>=${TRACKER_VERSION}

# needs xdg-email
RUN_DEPENDS=		devel/xdg-utils

MODGNOME_TOOLS += yelp desktop-file-utils gtk-update-icon-cache shared-mime-info
.include <bsd.port.mk>
