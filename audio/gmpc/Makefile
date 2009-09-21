# $OpenBSD: Makefile,v 1.28 2009/09/21 18:39:16 jasper Exp $

COMMENT=		GNOME music player client

VERSION=		0.19.0
DISTNAME=		gmpc-${VERSION}
PKGNAME=		${DISTNAME}p0
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
			gio-2.0 glib-2.0 glitz gmodule-2.0 gnutls gobject-2.0 \
			gpg-error gthread-2.0 gtk-x11-2.0 m pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread \
			tasn1 xml2 z pthread-stubs sqlite3 xcb

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=musicpd/}

MODULES=		devel/gettext gcc3 textproc/intltool

MODGCC3_ARCHES= 	sparc
MODGCC3_LANGS=  	c

USE_GMAKE=		Yes
USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

BUILD_DEPENDS=		::x11/gob2

RUN_DEPENDS=		:desktop-file-utils-*:devel/desktop-file-utils

CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS+=	--enable-configdir \
			--enable-system-libsexy

LIB_DEPENDS=		mpd:libmpd->=${VERSION}:audio/libmpd \
			sexy::x11/libsexy \
			glade-2.0::devel/libglade2 \
			soup-2.4::devel/libsoup,-main

.include <bsd.port.mk>
