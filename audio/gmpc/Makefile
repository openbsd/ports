# $OpenBSD: Makefile,v 1.1.1.1 2006/10/27 14:11:16 jasper Exp $

COMMENT=		"gnome music player client"

DISTNAME=		gmpc-0.13.0
CATEGORIES=		audio

HOMEPAGE=		http://cms.qballcow.nl/index.php?page=Gnome_Music_Player_Client

MAINTAINER=		Pierre-Yves Ritschard <pyr@spootnik.org>

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xrender c fontconfig freetype m pthread z \
			atk-1.0 cairo gdk-x11-2.0 gdk_pixbuf-2.0 \
			glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
			gtk-x11-2.0 pango-1.0 pangocairo-1.0 \
			pangoft2-1.0 png xml2

MASTER_SITES=		http://download.qballcow.nl/programs/gmpc-0.13/

MODULES=		devel/gettext gcc3

MODGCC3_ARCHES= 	sparc
MODGCC3_LANGS=  	c

CONFIGURE_STYLE=	gnu

BUILD_DEPENDS=		::devel/pkgconfig \
			::textproc/p5-XML-Parser

CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include"

LIB_DEPENDS=		mpd.>=0::audio/libmpd \
			glade-2.0::devel/libglade2

.include <bsd.port.mk>
