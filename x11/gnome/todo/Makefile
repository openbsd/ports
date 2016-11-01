# $OpenBSD: Makefile,v 1.6 2016/11/01 21:07:18 ajacoutot Exp $

COMMENT=		simple task management application

GNOME_PROJECT=		gnome-todo
GNOME_VERSION=		3.22.0

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject camel-1.2 db dbus-1 drm
WANTLIB += ebackend-1.2 ecal-1.2 edataserver-1.2 edataserverui-1.2
WANTLIB += epoxy expat ffi fontconfig freetype gbm gck-1 gcr-base-3
WANTLIB += gcr-ui-3 gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glapi glib-2.0 gmodule-2.0 gmp goa-1.0 gobject-2.0
WANTLIB += gpg-error graphite2 gstaudio-1.0 gstbase-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += hogweed ical icalss icalvcal iconv icudata icui18n
WANTLIB += icuuc idn intl javascriptcoregtk-4.0 json-glib-1.0
WANTLIB += lzma m nettle nspr4 nss3 orc-0.4 p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre peas-1.0 pixman-1
WANTLIB += plc4 plds4 png pthread pthread-stubs secret-1 smime3
WANTLIB += softokn3 soup-2.4 sqlite3 ssl3 stdc++ tasn1 webkit2gtk-4.0
WANTLIB += xcb xcb-dri2 xcb-glx xcb-render xcb-shm xcb-xfixes
WANTLIB += xml2 z

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

LIB_DEPENDS=		databases/evolution-data-server \
			devel/libpeas

.include <bsd.port.mk>
