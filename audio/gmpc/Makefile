# $OpenBSD: Makefile,v 1.22 2008/10/28 13:33:16 jasper Exp $

COMMENT=		GNOME music player client

VERSION=		0.15.5.0
DISTNAME=		gmpc-${VERSION}
PKGNAME=		${DISTNAME}p4
CATEGORIES=		audio

MAINTAINER=		Landry Breuil <gaston@gcu.info>

HOMEPAGE=		http://sarine.nl/gmpc

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
			Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo crypto \
			expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
			glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
			gtk-x11-2.0 idn m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
			pcre pixman-1 png pthread ssl xml2 z

MASTER_SITES=		http://download.sarine.nl/gmpc-${VERSION:S/.0//}/ \
			http://humppa.nl/distfiles/gmpc/

MODULES=		devel/gettext gcc3 textproc/intltool

MODGCC3_ARCHES= 	sparc
MODGCC3_LANGS=  	c

USE_GMAKE=		Yes
USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

RUN_DEPENDS=		:desktop-file-utils-*:devel/desktop-file-utils

CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS+=	--enable-configdir \
			--enable-artist-browser

LIB_DEPENDS=		mpd.>=2::audio/libmpd \
			glade-2.0::devel/libglade2 \
			curl::net/curl

.include <bsd.port.mk>
