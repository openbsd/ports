# $OpenBSD: Makefile,v 1.56 2014/04/02 09:36:09 jasper Exp $

COMMENT=		GNOME music player client

VERSION=		11.8.16
DISTNAME=		gmpc-${VERSION}
REVISION =		7

CATEGORIES=		audio

MAINTAINER=		Landry Breuil <landry@openbsd.org>

HOMEPAGE =		http://gmpclient.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xcomposite Xcursor Xdamage Xext \
			Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo \
			expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
			gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
			gthread-2.0 gtk-x11-2.0 m pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread \
			xml2 z pthread-stubs sqlite3 xcb \
			dbus-1 dbus-glib-1 xcb-shm graphite2 harfbuzz \
			mpd soup-2.4 xcb-render ffi unique-1.0

MASTER_SITES=		http://www.musicpd.org/download/gmpc/${VERSION}/

MODULES=		devel/gettext x11/gnome

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
