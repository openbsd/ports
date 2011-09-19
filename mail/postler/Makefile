# $OpenBSD: Makefile,v 1.13 2011/09/19 08:23:05 ajacoutot Exp $

COMMENT =	lightweight mail user agent

# git clone of 0d21f7a7c5d8281ae5302756433956bca0522660
XFCE_VERSION =	0.1.1.1
XFCE_GOODIE =	postler
REVISION=		0

MAINTAINER =	Landry Breuil <landry@openbsd.org>
CATEGORIES =	mail

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

HOMEPAGE =	https://launchpad.net/postler
MASTER_SITES =	http://distfiles.nl/
EXTRACT_SUFX =	.tar.gz
MODULES =	x11/xfce4 devel/waf

MODXFCE_DESKTOP_FILE =	Yes
NO_REGRESS =	Yes

LIB_DEPENDS =	www/webkit>=1.4.0v0 \
		devel/libnotify \
		databases/db/v4 \
		audio/libcanberra \
		devel/libunique

CONFIGURE_ARGS+=	--disable-libindicate \
			--disable-libfolks \
			--disable-libstemmer

BUILD_DEPENDS =	${RUN_DEPENDS} \
		lang/vala>=0.12.0

RUN_DEPENDS =	mail/msmtp

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 intl \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z \
		cairo pixman-1 png pthread-stubs xcb xml2 \
		xcb-render webkitgtk-1.0 notify unique-1.0 soup-2.4 \
		GL Xxf86vm drm xcb-shm crypto ssl canberra db

pre-configure:
	${SUBST_CMD} ${WRKSRC}/wscript

.include <bsd.port.mk>
