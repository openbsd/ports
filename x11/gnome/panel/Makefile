# $OpenBSD: Makefile,v 1.89 2011/06/03 15:41:14 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME panel

GNOME_PROJECT=	gnome-panel
GNOME_VERSION=	2.32.1

REVISION=	2

SHARED_LIBS=	panel-applet-2            4.0 # .2.67
SHARED_LIBS +=  panel-applet-3            0.0 # 0.5

CATEGORIES=	x11

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 ORBitCosNaming-2 SM X11 X11-xcb XRes
WANTLIB += Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm art_lgpl_2 asn1 atk-1.0
WANTLIB += bonobo-2 bonobo-activation bonoboui-2 c cairo camel-1.2
WANTLIB += canberra canberra-gtk com_err croco-0.6 crypto dbus-1
WANTLIB += dbus-glib-1 drm ebook-1.2 ecal-1.2 edataserver-1.2
WANTLIB += edataserverui-1.2 execinfo expat fontconfig freetype
WANTLIB += gailutil gcrypt gdata gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnome-2 gnome-desktop-2 gnome-keyring
WANTLIB += gnome-menu gnomecanvas-2 gnomevfs-2 gobject-2.0 gpg-error
WANTLIB += gssapi gthread-2.0 gtk-x11-2.0 gweather ical icalss
WANTLIB += icalvcal krb5 ltdl m nspr4 nss3 nssutil3 ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png popt pthread pthread-stubs rsvg-2 smime3 soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 ssl ssl3 startup-notification-1
WANTLIB += util vorbis vorbisfile wnck-1 xcb xcb-aux xcb-render
WANTLIB += xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	devel/gobject-introspection

LIB_DEPENDS= 	databases/evolution-data-server \
		audio/libcanberra,-gtk \
		devel/libtool,-ltdl \
		devel/libwnck \
		x11/gnome/desktop \
		x11/gnome/menus \
		x11/gnome/libgweather \
		x11/gnome/librsvg \
		devel/libsoup,-gnome \
		x11/gnome/libbonoboui
RUN_DEPENDS=	notification-daemon-*|notification-daemon-xfce-*|xfce4-notifyd-*:sysutils/notification-daemon

MODGNOME_HELP_FILES= 	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	gnome-panel

FAKE_FLAGS=	dbus_confdir=${PREFIX}/share/examples/gnome-panel/dbus-1/system.d

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--disable-network-manager \
		--enable-introspection
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"

# XXX configure script looks for python but it is not used at all.
# We don't add python to build depends because it is needed by some of
# the dependencies anyway, so it'll be there already.
MODULES+=	lang/python
MODPY_BUILDDEP=	No
MODPY_RUNDEP=	No
USE_GROFF =	Yes

.include <bsd.port.mk>
