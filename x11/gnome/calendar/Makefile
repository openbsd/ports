# $OpenBSD: Makefile,v 1.2 2015/04/15 09:40:53 ajacoutot Exp $

COMMENT =		GNOME calendar

GNOME_PROJECT =		gnome-calendar
GNOME_VERSION =		3.16.0
REVISION =		0

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/dconf \
			devel/gettext \
			x11/gnome

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
WANTLIB += xcb-render xcb-shm xml2 z

LIB_DEPENDS =		databases/evolution-data-server

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

pre-configure:
# XXX cc1: error: unrecognized command line option
	perl -pi -e 's,-Wempty-body,,; \
		s,-Wvla,,;' ${WRKSRC}/configure

.include <bsd.port.mk>
