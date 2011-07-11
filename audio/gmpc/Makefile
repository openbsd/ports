# $OpenBSD: Makefile,v 1.38 2011/07/11 14:04:42 jasper Exp $

COMMENT=		GNOME music player client

VERSION=		0.20.0
DISTNAME=		gmpc-${VERSION}
REVISION=		2

CATEGORIES=		audio

MAINTAINER=		Landry Breuil <gaston@gcu.info>

HOMEPAGE=		http://gmpc.wikia.com/wiki/Gnome_Music_Player_Client

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
			Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo \
			expat fontconfig freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 \
			gio-2.0 glib-2.0 gmodule-2.0 gnutls gobject-2.0 \
			gpg-error gthread-2.0 gtk-x11-2.0 m pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread \
			tasn1 xml2 z pthread-stubs sqlite3 xcb \
			mpd sexy glade-2.0 soup-2.4 xcb-render xcb-render-util

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=musicpd/}

MODULES=		devel/gettext textproc/intltool

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=	gnu

BUILD_DEPENDS=		x11/gob2 \
			lang/vala>=0.7.10

RUN_DEPENDS=		devel/desktop-file-utils

CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS+=	--enable-system-libsexy

LIB_DEPENDS=		audio/libmpd>=0.20.0 \
			x11/libsexy \
			devel/libglade2 \
			devel/libsoup,-main

.include <bsd.port.mk>
