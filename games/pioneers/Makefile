# $OpenBSD: Makefile,v 1.37 2014/04/01 17:03:13 jasper Exp $

COMMENT=	Settlers of Catan for GNOME/Gtk

GNOME_PROJECT=	pioneers
GNOME_VERSION=	14.1
REVISION=	2

CATEGORIES=	games

EXTRACT_SUFX=	.tar.gz

HOMEPAGE=	http://pio.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ORBit-2 ORBitCosNaming-2 X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xxf86vm atk-1.0 bonobo-2 bonobo-activation c cairo
WANTLIB += canberra crypto dbus-1 dbus-glib-1 drm expat ffi fontconfig
WANTLIB += freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnome-2 gnomevfs-2 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 ltdl m ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png popt pthread pthread-stubs
WANTLIB += ssl stdc++ util vorbis vorbisfile xcb xcb-render xcb-shm
WANTLIB += xml2 z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pio/}

MODULES=	devel/gettext \
		x11/gnome

BUILD_DEPENDS=	x11/gnome/librsvg
RUN_DEPENDS=	x11/gtk+2,-guic
LIB_DEPENDS=	x11/gnome/libgnome \
		x11/gtk+2 \
		devel/libnotify

MODGNOME_TOOLS +=	desktop-file-utils
MODGNOME_TOOLS= 	yelp

CONFIGURE_STYLE=gnu
USE_GROFF =	Yes
CONFIGURE_ENV=	ac_cv_path_pngtopnm=""
CONFIGURE_ARGS=	--enable-protocol=IPv4

pre-configure:
	@perl -pi -e 's,games/pioneers,pioneers,g;' \
		-e 's,/usr/share,${PREFIX}/share,g' \
		${WRKSRC}/client/help/C/pioneers-C.omf \
		${WRKSRC}/docs/pioneers.6 \
		${WRKSRC}/docs/pioneers-server-gtk.6 \
		${WRKSRC}/docs/pioneers-server-console.6 \
		${WRKSRC}/docs/pioneersai.6 \
		${WRKSRC}/docs/pioneers-meta-server.6

.include <bsd.port.mk>
