# $OpenBSD: Makefile,v 1.15 2006/01/06 17:23:25 bernd Exp $

COMMENT=		"GNOME Application Libs"

VERSION=		2.4.3
API_VERSION=		2.4
DISTNAME=		gal-${VERSION}
PKGNAME=		gal2-${VERSION}p1
SHARED_LIBS=		gal-${API_VERSION}	0.0 \
			gal-a11y-${API_VERSION}	0.0

CATEGORIES=    		devel x11/gnome

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE  SM X11 Xrender ssl z \
			ORBit-2.0.0 ORBitCosNaming-2.0.0 \
			art_lgpl_2.0.0 atk-1.0.0.0 bonobo-2.0.0 \
			bonobo-activation bonoboui-2.0.0 fontconfig \
			freetype gconf-2.0.0 gdk-x11-2.0.0.0 \
			gdk_pixbuf-2.0.0.0 glade-2.0.0.0 glib-2.0.0.0 \
			gmodule-2.0.0.0 gnome-2.0.0 gnomecanvas-2.0.0 \
			gnomeprint-2-2 gnomevfs-2.0.0 gobject-2.0.0.0 \
			gthread-2.0.0.0 gtk-x11-2.0.0.0 m pango-1.0.0.0 \
			pangoft2-1.0.0.0 pangocairo-1.0.1000.0 \
			popt xml2 audiofile jpeg crypto esd gnome-keyring \
			cairo glitz png Xext

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gal/2.4/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui \
			gnomeprintui-2-2::x11/gnome/libgnomeprintui

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS=		VERSION API_VERSION

.include <bsd.port.mk>
