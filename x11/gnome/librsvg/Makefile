# $OpenBSD: Makefile,v 1.2 2003/04/11 05:05:02 marcm Exp $

COMMENT=		"SAX-based render library for SVG files"

DISTNAME=		librsvg-2.0.1
CATEGORIES=		devel x11/gnome

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/librsvg/2.0/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		gettext

BUILD_DEPENDS= 		:gtk+2->=2.0.0:x11/gtk+2 \
			:libart->=2.3.10:graphics/libart \
			:libxml->=2.4.7:textproc/libxml \
			:pkgconfig->=0.12.0p1:devel/pkgconfig \
			:popt->=1.5.0:devel/popt
						

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
