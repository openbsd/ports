# $OpenBSD: Makefile,v 1.25 2009/06/10 20:33:59 kili Exp $

COMMENT=		GNOME music player client

VERSION=		0.18.0
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
			Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo crypto \
			expat fontconfig freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 \
			gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
			gtk-x11-2.0 idn m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
			pcre pixman-1 png pthread ssl xml2 z gnutls gpg-error tasn1

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

LIB_DEPENDS=		mpd:libmpd->=0.18:audio/libmpd \
			sexy::x11/libsexy \
			glade-2.0::devel/libglade2 \
			soup-2.4::devel/libsoup,-main \
			curl::net/curl

.include <bsd.port.mk>
