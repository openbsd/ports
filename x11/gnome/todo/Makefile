# $OpenBSD: Makefile,v 1.2 2016/04/25 14:31:36 ajacoutot Exp $

COMMENT=		simple task management application

GNOME_PROJECT=		gnome-todo
GNOME_VERSION=		3.20.0

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject camel-1.2
WANTLIB += db dbus-1 drm ebackend-1.2 ecal-1.2 edataserver-1.2
WANTLIB += edataserverui-1.2 enchant epoxy expat ffi fontconfig
WANTLIB += freetype gbm gck-1 gcr-base-3 gcr-ui-3 gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 girepository-1.0 glapi glib-2.0
WANTLIB += gmodule-2.0 goa-1.0 gobject-2.0 gpg-error graphite2
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz harfbuzz-icu ical icalss icalvcal iconv icudata
WANTLIB += icui18n icuuc intl javascriptcoregtk-3.0 jpeg json-glib-1.0
WANTLIB += lzma m nspr4 nss3 nssutil3 orc-0.4 p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre peas-1.0 pixman-1
WANTLIB += plc4 plds4 png pthread pthread-stubs secret-1 smime3
WANTLIB += softokn3 soup-2.4 sqlite3 ssl3 stdc++ webkitgtk-3.0
WANTLIB += webp xcb xcb-dri2 xcb-glx xcb-render xcb-shape xcb-shm
WANTLIB += xcb-xfixes xml2 xslt z

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

LIB_DEPENDS=		databases/evolution-data-server \
			devel/libpeas

.include <bsd.port.mk>
