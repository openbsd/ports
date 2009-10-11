# $OpenBSD: Makefile,v 1.63 2009/10/11 22:38:04 ajacoutot Exp $

COMMENT=	GNOME panel

GNOME_PROJECT=	gnome-panel
GNOME_VERSION=	2.28.0
PKGNAME=	${DISTNAME}p0

SHARED_LIBS=	panel-applet-2       3.0      # .2.28

CATEGORIES=	x11

# OpenBSD does not have policykit, so we need to fall back on the
# previous gnome-panel and gdm interaction (bypassing gnome-session)
MASTER_SITES0=	http://www.bsdfrog.org/OpenBSD/distfiles/
#PATCHFILES=	gnome-panel_nopolkit.diff:0

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 XRes Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 asn1 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 bz2
WANTLIB += c cairo com_err croco-0.6 crypto dbus-1 dbus-glib-1
WANTLIB += execinfo expat fontconfig freetype gailutil gcrypt
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2
WANTLIB += gnomeui-2 gnomevfs-2 gnutls gobject-2.0 gpg-error gsf-1
WANTLIB += gssapi gthread-2.0 gtk-x11-2.0 ical icalss icalvcal
WANTLIB += krb5 m nspr4 nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png popt proxy pthread pthread-stubs
WANTLIB += smime3 softokn3 soup-2.4 sqlite3 ssl ssl3 startup-notification-1
WANTLIB += tasn1 util xcb xcb-atom xcb-aux xcb-event xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS= 	camel-1.2,ebook-1.2,ecal-1.2,edataserver-1.2,edataserverui-1.2::databases/evolution-data-server \
		wnck-1.>=21::devel/libwnck \
		gnome-desktop-2.>=5::x11/gnome/desktop \
		gnome-menu::x11/gnome/menus \
		gweather::x11/gnome/libgweather \
		rsvg-2::x11/gnome/librsvg \
		soup-gnome-2.4.>=1::devel/libsoup,-gnome

# looks broken otherwise (no icons, default fonts, no theme...)
RUN_DEPENDS=	::x11/gnome/settings-daemon

MODGNOME_HELP_FILES= Yes
USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	gnome-panel

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-eds \
		--disable-polkit \
		--disable-network-manager \
		--disable-scrollkeeper
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
