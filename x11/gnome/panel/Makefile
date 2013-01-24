# $OpenBSD: Makefile,v 1.128 2013/01/24 10:40:56 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME panel

GNOME_PROJECT=	gnome-panel
GNOME_VERSION=	3.6.2
REVISION=	1

SHARED_LIBS=	panel-applet-4            1.1 # 1.1

CATEGORIES=	x11

HOMEPAGE=	https://live.gnome.org/GnomePanel

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 X11-xcb XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += asn1 atk-1.0 c cairo cairo-gobject camel-1.2 com_err
WANTLIB += croco-0.6 crypto dbus-1 dbus-glib-1 dconf drm
WANTLIB += ecal-1.2 edataserver-1.2 expat ffi
WANTLIB += fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnome-desktop-3 gnome-keyring
WANTLIB += gnome-menu-3 gobject-2.0 gpg-error gssapi gthread-2.0
WANTLIB += gtk-3 gweather-3 ical icalss icalvcal krb5 m nspr4
WANTLIB += nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 png polkit-gobject-1 pthread pthread-stubs
WANTLIB += rsvg-2 smime3 softokn3 soup-2.4 soup-gnome-2.4 sqlite3
WANTLIB += ssl3 startup-notification-1 stdc++ telepathy-glib wnck-3
WANTLIB += xcb xcb-aux xcb-render xcb-shm xml2 z
WANTLIB += atk-bridge-2.0 atspi gck-1 gconf-2 gcr-base-3 harfbuzz
WANTLIB += icudata icule icuuc nssutil3 p11-kit xkbfile

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

# py-gnome is needed to load the old applets (gnome-panel-add) but we
# are trying to get away from the bonobo dependency for now.
MODULES+=	lang/python
MODPY_RUNDEP=	No

BUILD_DEPENDS=	devel/gobject-introspection
LIB_DEPENDS=	databases/evolution-data-server>=3.6.0p3 \
		devel/gconf2 \
		devel/libwnck3 \
		net/telepathy/telepathy-glib \
		sysutils/polkit \
		x11/gnome/desktop \
		x11/gnome/libgweather>=3.6.0 \
		x11/gnome/menus>=3.2.0 \
		x11/gnome/librsvg

# notification-area-applet
RUN_DEPENDS +=	sysutils/notification-daemon

# "Lock Screen"
RUN_DEPENDS+=	x11/gnome/screensaver

MODGNOME_TOOLS= goi yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

FAKE_FLAGS=	dbus_confdir=${PREFIX}/share/examples/gnome-panel/dbus-1/system.d

CONFIGURE_ARGS=	--disable-network-manager \
		--enable-telepathy-glib
MODGNOME_CPPFLAGS=	-I${LOCALBASE}/include/libpng

USE_GROFF =	Yes

.include <bsd.port.mk>
