# $OpenBSD: Makefile,v 1.16 2005/11/13 06:29:05 marcm Exp $

COMMENT=		"SAX-based render library for SVG files"

VERSION=		2.9.5
DISTNAME=		librsvg-${VERSION}
PKGNAME=		${DISTNAME}p2
CATEGORIES=		devel x11/gnome

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/librsvg/2.9/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ORBit-2 ORBitCosNaming-2 X11 Xrender Xext \
			atk-1.0.0.0 bonobo-2 bonobo-activation c crypto fontconfig \
			freetype gconf-2 glib-2.0.0.0 gmodule-2.0.0.0 gnomevfs-2 \
			gobject-2.0.0.0 gthread-2.0.0.0 iconv intl m pango-1.0.0.0 \
			pangocairo-1.0.1000.0 pthread ssl z gnomecanvas-2 \
			gnomeprint-2-2 gnomeprintui-2-2 cairo glitz png

BUILD_DEPENDS= 		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		art_lgpl_2.5::graphics/libart \
			bz2::archivers/bzip2 \
			gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
			gnomevfs-2.800.3::x11/gnome/vfs2 \
			gnomecanvas-2.800.0::x11/gnome/libgnomecanvas \
			gnomeprintui-2-2.1.0::x11/gnome/libgnomeprintui \
			gsf-1::devel/libgsf,no_gnome \
			pangoft2-1.0.0.0::devel/pango \
			popt.0.3::devel/popt \
			xml2.6::textproc/libxml

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	--disable-gtk-doc
CONFIGURE_ARGS+= 	--with-svgz
CONFIGURE_ARGS+= 	--without-croco
# Now what...
#CONFIGURE_ARGS+=	--disable-pixbuf-loader
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
