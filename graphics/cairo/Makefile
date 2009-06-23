# $OpenBSD: Makefile,v 1.24 2009/06/23 08:01:50 eric Exp $

COMMENT=		vector graphics library

DISTNAME=		cairo-1.8.8
SHARED_LIBS=		cairo   9.2
CATEGORIES=		graphics

HOMEPAGE=		http://cairographics.org/introduction

MAINTAINER=		Eric Faurot <eric@openbsd.org>

WANTLIB=		X11 Xau Xdmcp Xrender expat fontconfig freetype m \
			pixman-1.>=12.0 z

# LGPLv2.1 / MPL 1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cairographics.org/releases/

USE_X11=		Yes
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

LIB_DEPENDS=		png::graphics/png \
			glitz.>=2:glitz->=0.5.6:graphics/glitz

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		png_REQUIRES=libpng
CONFIGURE_ARGS=		--enable-glitz \
			--enable-pdf \
			--enable-ps

REGRESS_DEPENDS=	:ghostscript-*:print/ghostscript/gnu

.include <bsd.port.mk>
