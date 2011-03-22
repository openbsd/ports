# $OpenBSD: Makefile,v 1.1.1.1 2011/03/22 08:25:18 landry Exp $

COMMENT =	lightweight mail user agent

XFCE_VERSION =	0.1.1
XFCE_GOODIE =	postler

MAINTAINER =	Landry Breuil <landry@openbsd.org>
CATEGORIES =	mail

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

HOMEPAGE =	https://launchpad.net/postler
MODULES =	x11/xfce4 devel/waf

DESKTOP_FILES =	Yes
NO_REGRESS =	Yes

LIB_DEPENDS =	www/webkit \
		devel/libnotify \
		databases/db/v4 \
		audio/libcanberra \
		devel/libunique

CONFIGURE_ARGS+=	--disable-libindicate

BUILD_DEPENDS =	${RUN_DEPENDS} \
		lang/vala

RUN_DEPENDS =	mail/msmtp

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gnutls gobject-2.0 gthread-2.0 gtk-x11-2.0 intl \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z \
		dbus-1 dbus-glib-1 cairo pixman-1 png pthread-stubs xcb xml2 \
		xcb-render webkit-1.0 notify unique-1.0 soup-2.4 \
		GL Xxf86vm drm xcb-shm crypto ssl tasn1 canberra db

pre-configure:
	${SUBST_CMD} ${WRKSRC}/wscript

.include <bsd.port.mk>
