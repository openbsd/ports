# $OpenBSD: Makefile,v 1.44 2009/06/11 18:38:17 ajacoutot Exp $

COMMENT=		GNOME utility programs

GNOME_PROJECT=		gnome-utils
GNOME_VERSION=		2.24.1
PKGNAME=		${DISTNAME}p13

SHARED_LIBS +=  gdict-1.0      6.0      # .6.3

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common \
		avahi-glib bonobo-2 bonobo-activation \
		bonoboui-2 c cairo crypto dbus-1 dbus-glib-1 expat \
		fontconfig freetype gailutil gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 \
		gnome-desktop-2 gnome-keyring gnomecanvas-2 gnomevfs-2 \
		gobject-2.0 gthread-2.0 gtk-x11-2.0 kvm m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png popt \
		pthread ssl startup-notification-1 util xml2 z

LIB_DEPENDS=		gtop-2.0.>=7::devel/libgtop2 \
			gnomeui-2.>=1800::x11/gnome/libgnomeui \
			panel-applet-2::x11/gnome/panel
RUN_DEPENDS=		::x11/gnome/gvfs

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

MODGNOME_HELP_FILES=	Yes
USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	gnome-utils

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-hal \
			--with-grep="/usr/bin/grep" \
			--enable-gfloppy=no \
			--enable-console-helper=no \
			--enable-ipv6=yes
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
