# $OpenBSD: Makefile,v 1.27 2011/09/13 07:50:51 jasper Exp $

COMMENT=		reminder program for prevention of RSI

DISTNAME=		workrave-1.9.4
CATEGORIES=		productivity x11

HOMEPAGE=		http://www.workrave.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xtst Xxf86vm
WANTLIB += atk-1.0 atkmm-1.6 c cairo cairomm-1.0 dbus-1 dbus-glib-1
WANTLIB += drm expat fontconfig freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gdkmm-2.4 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 gstreamer-0.10 gthread-2.0 gtk-x11-2.0
WANTLIB += gtkmm-2.4 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4
WANTLIB += pcre pixman-1 png pthread pthread-stubs sigc-2.0 stdc++
WANTLIB += xcb xcb-render xcb-shm xml2 z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=workrave/}

BUILD_DEPENDS=		devel/py-cheetah
LIB_DEPENDS=		devel/gconf2 \
			multimedia/gstreamer-0.10/core \
			x11/dbus-glib \
			x11/gtk2mm

MODULES=		devel/gettext \
			lang/python \
			textproc/intltool

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-xml \
			--disable-pulse \
			--enable-dbus

# XXX: Disabled for now as workrave isn't ported to libpanel-applet-4.0 yet
CONFIGURE_ARGS+=	--disable-gnome
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
