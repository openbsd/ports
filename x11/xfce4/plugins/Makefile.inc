V?=	4.0.6

CATEGORIES?=	x11 x11/xfce4 x11/xfce4-plugins

MASTER_SITE_EXTRAS=	http://hannelore.f1.fhtw-berlin.de/mirrors/xfce4/xfce-${V}/src/
MASTER_SITE_GOODIES=	http://download.berlios.de/xfce-goodies/
DIST_SUBDIR?=	xfce4

HOMEPAGE_EXTRAS=	http://www.xfce.org/en/extras.html
HOMEPAGE_GOODIES=	http://xfce-goodies.berlios.de/

MAINTAINER?=	Jolan Luff <jolan@openbsd.org>

# GPL:	xfce4-minicmd-plugin, xfce4-netload-plugin, xfce4-notes-plugin,
#	xfce4-datetime-plugin
# BSD:	xfce4-mixer, xfce4-systray, xfce4-toys, xfce4-trigger-launcher, 
#	xfce4-systemload-plugin, xfce4-battery-plugin, xfce4-showdesktop-plugin,
#	xfce4-diskperf-plugin, xfce4-clipman-plugin, xfce4-fsguard-plugin,
#	xfce4-wavelan-plugin, xfce4-xmms-plugin, xfce4-weather-plugin
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes

USE_X11?=	Yes

DBH=	dbh.1.0::databases/dbh
GTK2=	gdk_pixbuf-2.0.0.14,gdk-x11-2.0.0.14,gtk-x11-2.0.0.14::x11/gtk+2
GTHREAD=gthread-2.0.0.11::devel/glib2
GUI=	xfcegui4.1.6::x11/xfce4/libraries/libxfcegui4
MCS=	xfce4mcs-client.1.1,xfce4mcs-manager.1.1::x11/xfce4/libraries/libxfce4mcs
PANEL=	:xfce4-panel-*:x11/xfce4/desktop/xfce4-panel
PKG=	:pkgconfig-*:devel/pkgconfig
STARTUP=startup-notification-1.0.0::devel/startup-notification
XML2=	xml2.7.10::textproc/libxml

BUILD_DEPENDS?=	${PKG} \
		${PANEL}
RUN_DEPENDS?=	${PANEL}

CONFIGURE_STYLE?=gnu
CONFIGURE_ENV?=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"

WANTLIB+=	X11 Xcursor Xext Xft Xinerama Xrender atk-1.0.0.0 fontconfig \
		freetype glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 m \
		pango-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 xfce4util z
