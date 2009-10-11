# $OpenBSD: Makefile,v 1.46 2009/10/11 23:22:57 jasper Exp $

COMMENT=		GNOME utility programs

GNOME_PROJECT=		gnome-utils
GNOME_VERSION=		2.28.0

SHARED_LIBS +=  gdict-1.0      6.1      # .6.6

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 c
WANTLIB += cairo crypto dbus-1 dbus-glib-1 expat fontconfig freetype
WANTLIB += gailutil gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gnomevfs-2 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 kvm ltdl m ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png popt pthread pthread-stubs
WANTLIB += ssl util vorbis vorbisfile xcb xml2 z

LIB_DEPENDS=		canberra,canberra-gtk::audio/libcanberra \
			gnome-2::x11/gnome/libgnome \
			gnomecanvas-2::x11/gnome/libgnomecanvas \
			gtop-2.0.>=7::devel/libgtop2 \
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
			--with-grep="/usr/bin/grep" \
			--enable-ipv6=yes
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
