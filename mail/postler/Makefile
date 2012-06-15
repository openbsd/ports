# $OpenBSD: Makefile,v 1.18 2012/06/15 08:32:16 ajacoutot Exp $

COMMENT =	lightweight mail user agent

# git clone of 0d21f7a7c5d8281ae5302756433956bca0522660
XFCE_VERSION =	0.1.1.1
XFCE_GOODIE =	postler
REVISION=	4

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

LIB_DEPENDS =	www/webkit,gtk3>=1.6.1v0 \
		devel/libnotify \
		databases/db/v4 \
		audio/libcanberra

CONFIGURE_ARGS+=	--disable-libindicate \
			--disable-libfolks \
			--disable-libstemmer

BUILD_DEPENDS =	${RUN_DEPENDS} \
		lang/vala

RUN_DEPENDS =	mail/msmtp \
		x11/gtk+2,-guic

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject canberra crypto db drm expat fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 kvm m notify pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 ssl webkitgtk-3.0 xcb xcb-render xcb-shm
WANTLIB += xml2 z

pre-configure:
	${SUBST_CMD} ${WRKSRC}/wscript

.include <bsd.port.mk>
