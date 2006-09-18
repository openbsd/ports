# $OpenBSD: Makefile,v 1.16 2006/09/18 12:19:40 espie Exp $

COMMENT=		"GNOME help browser"

VERSION=		2.6.5
DISTNAME=		yelp-${VERSION}
PKGNAME=		${DISTNAME}p2
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.gnome.org/
MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xext \
		Xrender art_lgpl_2 atk-1.0 audiofile bonobo-2 \
		bonobo-activation bonoboui-2 bz2 c crypto esd fontconfig \
		freetype gailutil gconf-2 gcrypt gdk-x11-2.0 \
		gdk_pixbuf-2.0 glade-2.0 glib-2.0 gmodule-2.0 \
		gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0 \
		gpg-error gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 popt cairo glitz png \
		pthread ssl xml2 xslt z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/yelp/2.6/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=		:scrollkeeper->=0.3.6:textproc/scrollkeeper \
			:docbook-dsssl-*:textproc/docbook-dsssl
LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui \
			gtkhtml-2::x11/gnome/libgtkhtml \
			exslt::textproc/libxslt

USE_GMAKE=		Yes
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
