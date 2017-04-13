# $OpenBSD: Makefile,v 1.79 2017/04/13 08:04:41 landry Exp $

COMMENT =	lightweight web browser

XFCE_VERSION =	0.5.11
XFCE_GOODIE =	midori
DISTNAME =	midori_0.5.11_all_
WRKDIST =	${WRKDIR}/${PKGNAME}
REVISION =	2

HOMEPAGE =	http://www.midori-browser.org
MAINTAINER =	Landry Breuil <landry@openbsd.org>
CATEGORIES =	www
SHARED_LIBS +=	midori-core 0.0 # 0.0

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	x11/xfce4 devel/cmake
MASTER_SITES =	http://midori-browser.org/downloads/

MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE =	Yes
NO_TEST =	Yes

CONFIGURE_ARGS = -DUSE_ZEITGEIST:Bool=No
CONFIGURE_ARGS += -DUSE_GTK3:Bool=Yes
CONFIGURE_ARGS += -DHALF_BRO_INCOM_WEBKIT2=true
LIB_DEPENDS =	www/webkitgtk4 \
		devel/libsoup \
		x11/gnome/gcr

WANTLIB += cairo-gobject gcr-ui-3 gdk-3 gtk-3 javascriptcoregtk-4.0 webkit2gtk-4.0

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-libav

BUILD_DEPENDS =	lang/vala \
		x11/gnome/librsvg

WANTLIB += X11 Xss atk-1.0 c cairo
WANTLIB += gdk_pixbuf-2.0 pangocairo-1.0 intl
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += pango-1.0 xml2 gck-1 gcr-base-3 p11-kit
WANTLIB += soup-2.4 sqlite3 soup-gnome-2.4

pre-configure:
	# cmake trips on it
	rm ${WRKSRC}/extensions/*.orig
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
