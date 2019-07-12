# $OpenBSD: Makefile,v 1.24 2019/07/12 20:51:19 sthen Exp $

COMMENT=	pidgin plugin to display messages through libnotify

DISTNAME=	pidgin-libnotify-0.14
CATEGORIES=	x11

REVISION=	6

HOMEPAGE=	http://gaim-libnotify.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gaim-libnotify/}

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 cairo expat ffi fontconfig freetype fribidi
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv
WANTLIB += intl m notify pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread xcb xcb-render xcb-shm z

MODULES=	textproc/intltool
LIB_DEPENDS=	net/pidgin,-libpurple \
		devel/libnotify>=0.7.2 \
		x11/gtk+2
BUILD_DEPENDS=	net/pidgin

USE_GMAKE=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
