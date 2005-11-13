# $OpenBSD: Makefile,v 1.2 2005/11/13 16:58:08 marcm Exp $

COMMENT=		"lightweight HTML rendering/printing/editing engine"

VERSION=		3.6.2
DISTNAME=		gtkhtml-${VERSION}
PKGNAME=		gtkhtml3-${VERSION}p0
CATEGORIES=    		www
HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# GPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 \
			fontconfig freetype m z \
			ORBit-2 art_lgpl_2 atk-1.0.0.0 gconf-2 glade-2.0.0.4 \
			bonobo-2 bonobo-activation bonoboui-2 \
			glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 gthread-2.0.0.0 \
			pango-1.0.600.0 pangoft2-1.0.600.0 pangocairo-1.0.1000.0 \
			gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 gtk-x11-2.0.0.0 \
			gnome-2.800.0 gnomecanvas-2.800.0 gnomeprint-2-2.1.0 gnomevfs-2.800.2 \
			popt xml2 cairo
			
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gtkhtml/3.6/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		gailutil::x11/gnome/gail \
			gnomeprintui-2-2::x11/gnome/libgnomeprintui \
			gnomeui-2::x11/gnome/libgnomeui

USE_X11=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=        ${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

API_VERSION=		3.6
SUBST_VARS=		API_VERSION

.include <bsd.port.mk>
