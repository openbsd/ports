# $OpenBSD: Makefile,v 1.8 2004/06/23 03:26:17 marcm Exp $

COMMENT=		"SAX-based render library for SVG files"

DISTNAME=		librsvg-2.6.5
CATEGORIES=		devel x11/gnome

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/librsvg/2.6/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS= 		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		art_lgpl_2.5::graphics/libart \
			bz2::archivers/bzip2 \
			gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
			gsf-1::devel/libgsf \
			pangoft2-1.0.0.0::devel/pango \
			popt.0.3::devel/popt \
			xml2.6::textproc/libxml
						
USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	--disable-gtk-doc
CONFIGURE_ARGS+= 	--with-svgz
CONFIGURE_ARGS+= 	--without-croco
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
