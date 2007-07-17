# $OpenBSD: Makefile,v 1.3 2007/07/17 08:14:35 jasper Exp $

COMMENT=		C++ interface for cairo

DISTNAME=		cairomm-1.4.2
SHARED_LIBS=		cairomm-1.0	2.0
CATEGORIES=		graphics

HOMEPAGE=		http://cairographics.org/cairomm/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xau Xdmcp Xrender expat fontconfig freetype glitz \
			m png z

MASTER_SITES=		http://cairographics.org/releases/

LIB_DEPENDS=		cairo:cairo->=1.2:graphics/cairo

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-dependency-tracking
CONFIGURE_ARGS+=	--disable-docs

.include <bsd.port.mk>
