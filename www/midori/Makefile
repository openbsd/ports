# $OpenBSD: Makefile,v 1.66 2014/05/07 15:08:52 juanfra Exp $

SHARED_ONLY =	Yes
COMMENT =	lightweight web browser

XFCE_VERSION =	0.5.8
REVISION =	0
XFCE_GOODIE =	midori
WRKDIST =	${WRKDIR}

HOMEPAGE =	http://www.midori-browser.org
MAINTAINER =	Landry Breuil <landry@openbsd.org>
CATEGORIES =	www
SHARED_LIBS +=	midori-core 0.0 # 0.0

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	x11/xfce4 devel/cmake
MASTER_SITES =	https://launchpad.net/${XFCE_GOODIE}/trunk/${XFCE_VERSION}/+download/

MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE =	Yes
NO_TEST =	Yes

FLAVORS =	gtk3
FLAVOR ?=

CONFIGURE_ARGS = -DUSE_ZEITGEIST:Bool=No

.if ${FLAVOR:Mgtk3}
CONFIGURE_ARGS += -DUSE_GTK3:Bool=Yes -DHALF_BRO_INCOM_WEBKIT2:Bool=Yes
LIB_DEPENDS =	www/webkit,gtk3 \
		x11/gnome/gcr
WANTLIB += cairo-gobject gck-1 gcr-3 gcr-base-3 gdk-3 gtk-3 javascriptcoregtk-3.0
WANTLIB += p11-kit webkit2gtk-3.0

.else
LIB_DEPENDS =	www/webkit>=1.8.1v0
WANTLIB += Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender
WANTLIB += gdk-x11-2.0 gtk-x11-2.0 javascriptcoregtk-1.0
WANTLIB += webkitgtk-1.0

.endif

LIB_DEPENDS +=	devel/libnotify \
		devel/libsoup>=2.28.0

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-libav

BUILD_DEPENDS =	lang/vala \
		x11/gnome/librsvg

WANTLIB += X11 Xss atk-1.0 c cairo
WANTLIB += fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m notify pango-1.0 xml2 z
WANTLIB += pangocairo-1.0 pangoft2-1.0 pthread
WANTLIB += soup-2.4 sqlite3 soup-gnome-2.4

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
