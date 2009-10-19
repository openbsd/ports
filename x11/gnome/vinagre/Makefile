# $OpenBSD: Makefile,v 1.24 2009/10/19 12:10:44 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	VNC Client for the GNOME Desktop

GNOME_VERSION=	2.28.1
GNOME_PROJECT=	vinagre

CATEGORIES=	net

HOMEPAGE=	http://projects.gnome.org/vinagre/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib avahi-gobject bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 c cairo crypto dbus-1 dbus-glib-1 expat
WANTLIB += fontconfig freetype gailutil gcrypt gdbm gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gnome-2
WANTLIB += gnome-keyring gnomecanvas-2 gnomevfs-2 gnutls gobject-2.0
WANTLIB += gpg-error gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png popt pthread pthread-stubs
WANTLIB += sasl2 ssl tasn1 util xcb xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

RUN_DEPENDS=	:shared-mime-info->=0.21:misc/shared-mime-info
LIB_DEPENDS=	panel-applet-2.>=3::x11/gnome/panel \
		gtk-vnc-1.0.>=1::x11/gtk-vnc \
		telepathy-glib.>=4::net/telepathy/telepathy-glib \
		avahi-ui:avahi-gtk-*:net/avahi,-gtk

USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	vinagre

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-avahi
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
