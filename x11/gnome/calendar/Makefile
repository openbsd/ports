# $OpenBSD: Makefile,v 1.13 2016/05/09 07:43:10 jasper Exp $

COMMENT =		GNOME calendar

GNOME_PROJECT =		gnome-calendar
GNOME_VERSION =		3.20.2

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject camel-1.2 db dbus-1 ebackend-1.2
WANTLIB += ecal-1.2 edataserver-1.2 edataserverui-1.2 epoxy expat
WANTLIB += ffi fontconfig freetype gck-1 gcr-base-3 gcr-ui-3 gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error graphite2 gthread-2.0 gtk-3 harfbuzz ical
WANTLIB += icalss icalvcal icudata icui18n icuuc lzma m nspr4
WANTLIB += nss3 nssutil3 p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += secret-1 smime3 softokn3 soup-2.4 sqlite3 ssl3 xcb
WANTLIB += xcb-render xcb-shm xml2 z goa-1.0
WANTLIB += EGL GL X11-xcb Xt Xxf86vm drm enchant gbm glapi gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 harfbuzz-icu
WANTLIB += javascriptcoregtk-3.0 jpeg json-glib-1.0 orc-0.4 stdc++
WANTLIB += webkitgtk-3.0 webp xcb-dri2 xcb-glx xcb-shape xcb-xfixes
WANTLIB += xslt iconv intl

MODULES =		devel/dconf \
			x11/gnome

LIB_DEPENDS =		databases/evolution-data-server

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

pre-configure:
# XXX cc1: error: unrecognized command line option
	sed -i -e 's,-Wempty-body,,' \
		-e 's,-Wvla,,' ${WRKSRC}/configure

.include <bsd.port.mk>
