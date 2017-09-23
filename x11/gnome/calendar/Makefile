# $OpenBSD: Makefile,v 1.29 2017/09/23 11:41:31 sthen Exp $

COMMENT =		GNOME calendar

GNOME_PROJECT =		gnome-calendar
GNOME_VERSION =		3.24.3
REVISION =		1

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

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
WANTLIB += hyphen ical icalss icalvcal iconv icudata icui18n icuuc
WANTLIB += intl javascriptcoregtk-4.0 jpeg json-glib-1.0 lzma
WANTLIB += m notify nspr4 nss3 nssutil3 orc-0.4 p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png pthread pthread-stubs secret-1 smime3 softokn3
WANTLIB += soup-2.4 sqlite3 ssl3 ${COMPILER_LIBCXX} webkit2gtk-4.0 webp
WANTLIB += xcb xcb-dri2 xcb-glx xcb-render xcb-shm xcb-xfixes
WANTLIB += xml2 xslt z
WANTLIB += GLESv2 gstallocators-1.0 gstbadallocators-1.0 gstgl-1.0
WANTLIB += harfbuzz-icu tasn1

MODULES =		devel/dconf \
			x11/gnome

LIB_DEPENDS =		databases/evolution-data-server

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

CONFIGURE_STYLE =	gnu

pre-configure:
# XXX cc1: error: unrecognized command line option
	sed -i -e 's,-Wempty-body,,' \
		-e 's,-Wvla,,' ${WRKSRC}/configure

.include <bsd.port.mk>
