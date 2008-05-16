# $OpenBSD: Makefile,v 1.18 2008/05/16 17:52:18 eric Exp $

COMMENT=		vector graphics library

DISTNAME=		cairo-1.6.4
SHARED_LIBS=		cairo   8.0
CATEGORIES=		graphics

HOMEPAGE=		http://cairographics.org/introduction

MAINTAINER=		Eric Faurot <eric@openbsd.org>

WANTLIB=		X11 Xau Xdmcp Xrender expat fontconfig freetype m \
			pixman-1.>=11.0 z

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cairographics.org/releases/ \
			http://cairographics.org/snapshots/

USE_X11=		Yes
USE_LIBTOOL=		Yes

LIB_DEPENDS=		png::graphics/png \
			glitz.>=2:glitz->=0.5.6:graphics/glitz

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		png_REQUIRES=libpng
CONFIGURE_ARGS=		--enable-glitz


REGRESS_DEPENDS=	:ghostscript-*:print/ghostscript/gnu
SEPARATE_BUILD=		simple

.include <bsd.port.mk>
