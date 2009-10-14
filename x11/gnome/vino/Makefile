# $OpenBSD: Makefile,v 1.12 2009/10/14 11:25:32 ajacoutot Exp $

COMMENT=	VNC server for remote acces to your GNOME desktop

GNOME_PROJECT=	vino
GNOME_VERSION=	2.28.0

CATEGORIES=	net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xtst atk-1.0
WANTLIB += c cairo dbus-1 dbus-glib-1 expat fontconfig freetype
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gobject-2.0 gpg-error gthread-2.0
WANTLIB += gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs tasn1 xcb xml2
WANTLIB += z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	notify::devel/libnotify \
		unique-1.0::devel/libunique \
		gnutls::security/gnutls \
		telepathy-glib.>=4::net/telepathy/telepathy-glib \
		soup-2.4.>=2::devel/libsoup \
		gnome-keyring.>=5::x11/gnome/keyring \
		avahi-client,avahi-common,avahi-glib::net/avahi

USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	vino

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-gnome-keyring \
		--enable-avahi \
		--enable-http-server=no \
		--enable-libnotify \
		--enable-libunique \
		--enable-telepathy \
		--disable-ipv6
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/vino

.include <bsd.port.mk>
