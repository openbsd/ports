# $OpenBSD: Makefile,v 1.16 2016/10/31 10:48:33 jasper Exp $

COMMENT =		GNOME calendar

GNOME_PROJECT =		gnome-calendar
GNOME_VERSION =		3.22.1

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject camel-1.2 db dbus-1 drm
WANTLIB += ebackend-1.2 ecal-1.2 edataserver-1.2 edataserverui-1.2
WANTLIB += epoxy expat ffi fontconfig freetype gbm gck-1 gcr-base-3
WANTLIB += gcr-ui-3 gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi
WANTLIB += glib-2.0 gmodule-2.0 gmp goa-1.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gstaudio-1.0 gstbase-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz hogweed ical
WANTLIB += icalss icalvcal iconv icudata icui18n icuuc idn intl
WANTLIB += javascriptcoregtk-4.0 json-glib-1.0 lzma m nettle nspr4
WANTLIB += nss3 orc-0.4 p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += secret-1 smime3 softokn3 soup-2.4 sqlite3 ssl3 stdc++
WANTLIB += tasn1 webkit2gtk-4.0 xcb xcb-dri2 xcb-glx xcb-render
WANTLIB += xcb-shm xcb-xfixes xml2 z

MODULES =		devel/dconf \
			x11/gnome

LIB_DEPENDS =		databases/evolution-data-server

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

pre-configure:
# XXX cc1: error: unrecognized command line option
	sed -i -e 's,-Wempty-body,,' \
		-e 's,-Wvla,,' ${WRKSRC}/configure

.include <bsd.port.mk>
