# $OpenBSD: Makefile,v 1.7 2007/03/23 23:41:59 jasper Exp $

COMMENT=		"gnome music player client"

VERSION=		0.14.0
DISTNAME=		gmpc-${VERSION}
CATEGORIES=		audio

HOMEPAGE=		http://sarine.nl/gmpc

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE SM X11 Xext Xrender atk-1.0 c cairo crypto fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 png pthread ssl xml2 z

MASTER_SITES=		http://download.sarine.nl/gmpc-${VERSION}/

MODULES=		devel/gettext gcc3

MODGCC3_ARCHES= 	sparc
MODGCC3_LANGS=  	c

USE_GMAKE=		Yes
USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

BUILD_DEPENDS=		::textproc/p5-XML-Parser

CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			sm_CFLAGS="-I/usr/X11R6/include" \
			sm_LIBS="-L/usr/X11R6/lib"

LIB_DEPENDS=		mpd:libmpd->=0.13:audio/libmpd \
			glade-2.0::devel/libglade2 \
			curl::net/curl

.include <bsd.port.mk>
