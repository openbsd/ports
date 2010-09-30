# $OpenBSD: Makefile,v 1.33 2010/09/30 09:54:59 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	VNC Client for the GNOME Desktop

GNOME_VERSION=	2.30.3
GNOME_PROJECT=	vinagre
REVISION=	0

CATEGORIES=	net

HOMEPAGE=	http://projects.gnome.org/vinagre/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo crypto dbus-1 dbus-glib-1 expat
WANTLIB += fontconfig freetype gailutil gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 pthread pthread-stubs ssl
WANTLIB += util xcb xcb-render xcb-render-util xml2 z png
WANTLIB += art_lgpl_2 avahi-client avahi-common avahi-glib avahi-gobject
WANTLIB += avahi-ui bonobo-2 bonobo-activation bonoboui-2
WANTLIB += gdbm gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 gnutls
WANTLIB += gtk-vnc-1.0 gvnc-1.0 panel-applet-2 popt sasl2 tasn1
WANTLIB += canberra ltdl ogg vorbis vorbisfile telepathy-glib

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

RUN_DEPENDS=	:shared-mime-info->=0.21:misc/shared-mime-info
LIB_DEPENDS=	::x11/gnome/panel \
		:gtk-vnc->=0.4.0:x11/gtk-vnc \
		::net/telepathy/telepathy-glib \
		:avahi-gtk-*:net/avahi,-gtk,no_mono,no_qt3,no_qt4

USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	vinagre

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-avahi \
		--enable-telepathy=yes

# XXX console does not spawn (pthreads(3) or vte bug?)
CONFIGURE_ARGS+= --enable-ssh=no

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
