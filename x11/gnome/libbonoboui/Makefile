# $OpenBSD: Makefile,v 1.16 2006/01/17 12:07:12 steven Exp $

COMMENT=		"user interface components for bonobo"

VERSION=		2.10.1
DISTNAME=		libbonoboui-${VERSION}
PKGNAME=		${DISTNAME}p1
SHARED_LIBS=		bonoboui-2	0.0
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.gnome.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xext Xft Xrender \
		c crypto fontconfig freetype pthread ssl z \
		art_lgpl_2 atk-1.0.0.0 audiofile bonobo-2 \
		bonobo-activation esd gconf-2 \
		gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glade-2.0.0.0 \
		glib-2.0.0.0 gmodule-2.0.0.0 gnomevfs-2 gobject-2.0.0.0 \
		gthread-2.0.0.0 gtk-x11-2.0.0.0 m pango-1.0.0.0 \
		pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 xml2

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libbonoboui/2.10/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		gnome-2::x11/gnome/libgnome \
			gnomecanvas-2::x11/gnome/libgnomecanvas \
			popt.0.3::devel/popt

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
