# $OpenBSD: Makefile,v 1.20 2010/10/24 21:33:27 ajacoutot Exp $

COMMENT=		reminder program for prevention of RSI

DISTNAME=		workrave-1.9.1
REVISION =		3
CATEGORIES=		productivity x11

HOMEPAGE=		http://www.workrave.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xtst art_lgpl_2 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 c
WANTLIB += cairo cairomm-1.0 crypto dbus-1 dbus-glib-1 expat fontconfig
WANTLIB += freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gnome-2 gnomecanvas-2 gnomevfs-2 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangomm-1.4 pcre pixman-1 png popt pthread pthread-stubs
WANTLIB += sigc-2.0 ssl stdc++ util xcb xcb-render xcb-render-util
WANTLIB += xml2 z atkmm-1.6

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=workrave/}

BUILD_DEPENDS=		::devel/py-cheetah
LIB_DEPENDS=		gstreamer-0.10::multimedia/gstreamer-0.10/core \
			gnet-2.0::net/gnet \
			panel-applet-2::x11/gnome/panel \
			gdkmm-2.4,gtkmm-2.4::x11/gtk2mm

MODULES=		devel/gettext \
			lang/python \
			textproc/intltool

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CFLAGS+=		-DNDEBUG

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-xml \
			--enable-dbus
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/frontend/gtkmm/src/Makefile.in \
		${WRKSRC}/frontend/gtkmm/src/gnome_applet/Makefile.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/workrave/sound/events
	${INSTALL_DATA} ${WRKSRC}/frontend/common/share/sounds/workrave.soundlist \
		${PREFIX}/share/examples/workrave/sound/events

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
