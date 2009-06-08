# $OpenBSD: Makefile,v 1.9 2009/06/08 17:59:15 ajacoutot Exp $

COMMENT=		VNC server for remote acces to your GNOME desktop

GNOME_PROJECT=		vino
GNOME_VERSION=		2.24.1
PKGNAME=		${DISTNAME}p5

CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xtst art_lgpl_2 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 c
WANTLIB += cairo crypto dbus-1 dbus-glib-1 expat fontconfig freetype
WANTLIB += gailutil gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2
WANTLIB += gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0
WANTLIB += gpg-error gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png popt
WANTLIB += pthread ssl tasn1 util xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

LIB_DEPENDS=		notify::devel/libnotify \
			unique-1.0::devel/libunique \
			gnutls::security/gnutls \
			gnomeui-2::x11/gnome/libgnomeui

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	vino

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--enable-avahi \
			--enable-http-server=no \
			--enable-session-support \
			--enable-gnome-keyring \
			--enable-libnotify \
			--enable-libunique \
			--disable-ipv6

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
