# $OpenBSD: Makefile,v 1.43 2017/11/02 15:27:16 ajacoutot Exp $

COMMENT=		initial-setup firstboot-like tool

GNOME_PROJECT=		gnome-initial-setup
GNOME_VERSION=		3.26.0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL GLESv2 ICE SM X11 X11-xcb
WANTLIB += Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xt Xtst Xxf86vm accountsservice atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject crack crypto
WANTLIB += dbus-1 drm enchant epoxy expat ffi fontconfig freetype
WANTLIB += gbm gcrypt gdk-3 gdk_pixbuf-2.0 gdm geoclue-2 geocode-glib
WANTLIB += gio-2.0 glapi glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += goa-1.0 goa-backend-1.0 gobject-2.0 gpg-error graphite2
WANTLIB += gstallocators-1.0 gstapp-1.0 gstaudio-1.0 gstbadallocators-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstgl-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 gweather-3
WANTLIB += harfbuzz harfbuzz-icu hyphen ibus-1.0 iconv icudata
WANTLIB += icui18n icuuc intl javascriptcoregtk-4.0 jpeg json-glib-1.0
WANTLIB += lzma m notify orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png polkit-gobject-1 pwquality rest-0.7
WANTLIB += secret-1 soup-2.4 soup-gnome-2.4 sqlite3 tasn1 webkit2gtk-4.0
WANTLIB += webp xcb xcb-dri2 xcb-glx xcb-render xcb-shm xcb-xfixes
WANTLIB += xml2 xslt z
WANTLIB += heimdal/lib/heimsqlite

MODULES=		devel/dconf \
			security/heimdal \
			x11/gnome

LIB_DEPENDS=		inputmethods/ibus \
			security/libpwquality \
			x11/gnome/desktop \
			x11/gnome/gdm \
			x11/gnome/libgweather \
			x11/gnome/online-accounts

BUILD_DEPENDS=		geo/geoclue2
RUN_DEPENDS=		geo/geoclue2

# gnome-welcome-tour
RUN_DEPENDS +=		x11/gnome/getting-started-docs

# share/polkit-1/rules.d/20-gnome-initial-setup.rules
RUN_DEPENDS +=		sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=		sysutils/consolekit

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-initial-setup

.include <bsd.port.mk>
