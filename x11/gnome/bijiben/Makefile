# $OpenBSD: Makefile,v 1.14 2014/10/15 13:34:56 jasper Exp $

TRACKER_API=		1.0

COMMENT=		simple note editor

GNOME_PROJECT=		bijiben
GNOME_VERSION=		3.14.1

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject camel-1.2 db dbus-1 dbus-glib-1
WANTLIB += ebackend-1.2 ebook-1.2 ebook-contacts-1.2 ecal-1.2
WANTLIB += edata-book-1.2 edataserver-1.2 enchant expat ffi fontconfig
WANTLIB += freetype gailutil-3 gbm gck-1 gcr-base-3 gcr-ui-3 gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 geoclue gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-desktop-3 goa-1.0 gobject-2.0 gpg-error graphite2
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += gtkhtml-4.0 gtkhtml-editor-4.0 gtkspell3-3 harfbuzz
WANTLIB += harfbuzz-icu ical icalss icalvcal icudata icui18n icuuc
WANTLIB += javascriptcoregtk-3.0 jpeg kvm m nspr4 nss3 nssutil3
WANTLIB += orc-0.4 p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += secret-1 smime3 softokn3 soup-2.4 sqlite3 ssl3 stdc++
WANTLIB += uuid webkitgtk-3.0 webp xcb xcb-render xcb-shm xml2
WANTLIB += xslt z zeitgeist-2.0
WANTLIB += tracker-sparql-${TRACKER_API}
WANTLIB += lib/tracker-${TRACKER_API}/tracker-common
WANTLIB += lib/tracker-${TRACKER_API}/tracker-data

LIB_DEPENDS=		productivity/zeitgeist \
			x11/gnome/online-accounts \
			x11/gnome/tracker>=${TRACKER_API}

# XXX should be a LIB_DEPENDS+WANTLIB but check-lib-depends(1) does not
# work with unversioned solibs (LOCALBASE/lib/evolution/*/*.so).
BUILD_DEPENDS +=	mail/evolution
RUN_DEPENDS +=		mail/evolution

# needs xdg-email
RUN_DEPENDS +=		devel/xdg-utils

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache \
			shared-mime-info yelp

.include <bsd.port.mk>
