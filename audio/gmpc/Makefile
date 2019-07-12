# $OpenBSD: Makefile,v 1.68 2019/07/12 20:43:33 sthen Exp $

COMMENT=		GNOME music player client

VERSION=		11.8.16
DISTNAME=		gmpc-${VERSION}
REVISION =		17

CATEGORIES=		audio

MAINTAINER=		Landry Breuil <landry@openbsd.org>

HOMEPAGE =		http://gmpclient.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1 expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz iconv intl lzma m mpd pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread soup-2.4
WANTLIB += sqlite3 unique-1.0 xcb xcb-render xcb-shm xml2 z

MASTER_SITES=		http://www.musicpd.org/download/gmpc/${VERSION}/

MODULES=		textproc/intltool x11/gnome

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu

# fuck you vala, for running valac without reason and generating broken code.
post-patch:
	touch ${WRKSRC}/src/gmpc_vala.stamp

BUILD_DEPENDS=		x11/gob2

MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache vala yelp

CONFIGURE_ARGS+=	--enable-appindicator=no

LIB_DEPENDS=		audio/libmpd>=11.8.17 \
			x11/gtk+2 \
			devel/libunique \
			devel/libsoup

.include <bsd.port.mk>
