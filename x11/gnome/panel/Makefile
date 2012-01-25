# $OpenBSD: Makefile,v 1.112 2012/01/25 18:18:13 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME panel

GNOME_PROJECT=	gnome-panel
GNOME_VERSION=	3.2.1
REVISION=	7

SHARED_LIBS=	panel-applet-4            1.0 # 0.0

CATEGORIES=	x11

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += asn1 atk-1.0 c cairo cairo-gobject camel-1.2 com_err
WANTLIB += croco-0.6 crypto dbus-1 dbus-glib-1 dconf drm ebook-1.2
WANTLIB += ecal-1.2 edataserver-1.2 edataserverui-3.0 softokn3
WANTLIB += expat fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3 gnome-keyring
WANTLIB += gnome-menu-3 gobject-2.0 gpg-error gssapi gthread-2.0
WANTLIB += gtk-3 gweather-3 ical icalss icalvcal krb5 m nspr4
WANTLIB += nss3 nssutil3 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += rsvg-2 smime3 soup-2.4 soup-gnome-2.4 sqlite3 ssl3
WANTLIB += startup-notification-1 telepathy-glib wnck-3 xcb
WANTLIB += xcb-aux xcb-render xcb-shm xml2 z X11-xcb ffi stdc++

MODULES=	devel/dconf \
		devel/gconf2 \
		devel/gettext \
		x11/gnome

# py-gnome is needed to load the old applets (gnome-panel-add) but we
# are trying to get away from the bonobo dependency for now.
MODULES+=	lang/python
MODPY_RUNDEP=	No

BUILD_DEPENDS=	devel/gobject-introspection
LIB_DEPENDS=	databases/evolution-data-server \
		devel/libwnck3 \
		net/telepathy/telepathy-glib \
		x11/gnome/desktop \
		x11/gnome/libgweather \
		x11/gnome/menus>=3.2.0 \
		x11/gnome/librsvg
RUN_DEPENDS=	x11/gnome/icon-theme-symbolic

# notification-area-applet
RUN_DEPENDS +=	sysutils/notification-daemon

# "Lock Screen"
RUN_DEPENDS+=	x11/gnome/screensaver

# yelp.desktop menu entry (from yelp: OnlyShowIn=GNOME;)
RUN_DEPENDS+=	x11/gnome/user-docs

MODGNOME_TOOLS= goi yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGCONF2_SCHEMAS_DIR=	gnome-panel

FAKE_FLAGS=	dbus_confdir=${PREFIX}/share/examples/gnome-panel/dbus-1/system.d

CONFIGURE_ARGS=	--disable-network-manager \
		--enable-telepathy-glib
MODGNOME_CPPFLAGS=	-I${LOCALBASE}/include/libpng

USE_GROFF =	Yes

.include <bsd.port.mk>
