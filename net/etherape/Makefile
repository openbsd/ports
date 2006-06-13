# $OpenBSD: Makefile,v 1.7 2006/06/13 13:30:30 bernd Exp $

COMMENT=		"graphical network monitor"

DISTNAME=		etherape-0.9.0
PKGNAME=		${DISTNAME}p2
CATEGORIES=		net

HOMEPAGE=		http://etherape.sourceforge.net/

MAINTAINER=		Craig Barraclough <craigba@creative.com.au>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE ORBit-2 ORBitCosNaming-2 SM X11 Xext \
			Xrender art_lgpl_2 atk-1.0.0.0 audiofile \
			bonobo-activation bonoboui-2 c crypto esd fontconfig \
			freetype gconf-2 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 \
			glib-2.0.0.0 gmodule-2.0.0.0 gnome-2 gnome-keyring \
			gnomecanvas-2 gnomevfs-2 gobject-2.0.0.0 \
			iconv intl jpeg m pango-1.0.0.0 pangoft2-1.0.0.0 \
			pcap popt pthread ssl xml2 z bonobo-2 \
			gthread-2.0.0.0 pangocairo-1.0.0.0 cairo glitz png


MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=etherape/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
MAKE_ENV+=		LIBTOOL="${LOCALBASE}/bin/libtool"

BUILD_DEPENDS=		:pkgconfig->=0.9.0:devel/pkgconfig
LIB_DEPENDS=		gtk-x11-2.0.0.11::x11/gtk+2 \
			glade-2.0.0.1::devel/libglade2 \
			gnomeui-2::x11/gnome/libgnomeui

MODULES=		devel/gettext

USE_X11=		Yes
USE_LIBTOOL=		Yes

.include <bsd.port.mk>
