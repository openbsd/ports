# $OpenBSD: Makefile,v 1.80 2010/09/30 07:36:27 ajacoutot Exp $

COMMENT=	GNOME panel

GNOME_PROJECT=	gnome-panel
GNOME_VERSION=	2.32.0.2

SHARED_LIBS=	panel-applet-2            4.0 # .2.67
SHARED_LIBS +=  panel-applet-3            0.0 # 0.5

CATEGORIES=	x11

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 XRes Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr ltdl
WANTLIB += Xrender art_lgpl_2 asn1 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 wnck-1
WANTLIB += c cairo com_err croco-0.6 crypto dbus-1 dbus-glib-1
WANTLIB += eggdbus-1 execinfo expat fontconfig freetype gailutil
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 rsvg-2
WANTLIB += gnomevfs-2 gnutls gobject-2.0 gpg-error gssapi
WANTLIB += gthread-2.0 gtk-x11-2.0 ical icalss icalvcal krb5 m
WANTLIB += nspr4 nss3 ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 gweather
WANTLIB += pcre pixman-1 plc4 plds4 png popt proxy pthread pthread-stubs
WANTLIB += smime3 soup-2.4 sqlite3 ssl ssl3 startup-notification-1
WANTLIB += tasn1 util vorbis vorbisfile xcb xcb-atom xcb-aux xcb-event
WANTLIB += xcb-render xcb-render-util xml2 z camel-1.2 ebook-1.2
WANTLIB += ecal-1.2 edataserver-1.2 edataserverui-1.2 canberra-gtk
WANTLIB += canberra gnome-desktop-2 gnome-menu soup-gnome-2.4
WANTLIB += gdata nssutil3

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS= 	::databases/evolution-data-server \
		::audio/libcanberra \
		::devel/libtool,-ltdl \
		::devel/libwnck \
		::x11/gnome/desktop \
		::x11/gnome/menus \
		::x11/gnome/libgweather \
		::x11/gnome/librsvg \
		::devel/libsoup,-gnome \
		::devel/eggdbus
RUN_DEPENDS=	:notification-daemon-*|notification-daemon-xfce-*|xfce4-notifyd-*:sysutils/notification-daemon

MODGNOME_HELP_FILES= Yes
USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	gnome-panel

FAKE_FLAGS=	dbus_confdir=${PREFIX}/share/examples/gnome-panel/dbus-1/system.d

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--disable-introspection \
		--disable-network-manager
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"

# XXX configure script looks for python but it is not used at all.
# We don't add python to build depends because it is needed by some of
# the dependencies anyway, so it'll be there already.
MODULES+=	lang/python
MODPY_BUILDDEP=	No
MODPY_RUNDEP=	No

pre-configure:
	perl -pi -e 's,xsltproc -o,xsltproc --nonet -o,g' \
		${WRKSRC}/help/clock/Makefile.in \
		${WRKSRC}/help/fish/Makefile.in

.include <bsd.port.mk>
