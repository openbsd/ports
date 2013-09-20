# $OpenBSD: Makefile,v 1.51 2013/09/20 05:32:57 dcoppa Exp $

COMMENT=		GNOME music player client

VERSION=		11.8.16
DISTNAME=		gmpc-${VERSION}
REVISION =		5

CATEGORIES=		audio

MAINTAINER=		Landry Breuil <landry@openbsd.org>

HOMEPAGE =		http://gmpclient.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
			Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo \
			expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
			gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
			gthread-2.0 gtk-x11-2.0 m pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread \
			xml2 z pthread-stubs sqlite3 xcb stdc++ \
			GL Xxf86vm dbus-1 dbus-glib-1 drm xcb-shm \
			mpd soup-2.4 xcb-render ffi unique-1.0

MASTER_SITES=		http://www.musicpd.org/download/gmpc/${VERSION}/

MODULES=		devel/gettext textproc/intltool

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

# fuck you vala, for running valac without reason and generating broken code.
post-patch:
	touch ${WRKSRC}/src/gmpc_vala.stamp

BUILD_DEPENDS=		x11/gob2 \
			x11/gnome/doc-utils \
			lang/vala

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gnome/yelp \
			x11/gtk+2,-guic

CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib -liconv" \
			CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS+=	--enable-appindicator=no

LIB_DEPENDS=		audio/libmpd>=11.8.17 \
			x11/gtk+2 \
			devel/libunique \
			devel/libsoup,-main

.include <bsd.port.mk>
