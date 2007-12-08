# $OpenBSD: Makefile,v 1.16 2007/12/08 22:39:36 eric Exp $

COMMENT=		vector graphics library

DISTNAME=		cairo-1.4.12
SHARED_LIBS=		cairo   7.1
CATEGORIES=		graphics

HOMEPAGE=		http://cairographics.org/introduction

MAINTAINER=		Eric Faurot <eric@openbsd.org>

WANTLIB=		X11.>=10 Xau Xdmcp expat Xrender freetype fontconfig m z

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cairographics.org/releases/

USE_X11=		Yes
USE_LIBTOOL=		Yes

LIB_DEPENDS=		png::graphics/png \
			glitz.>=2:glitz->=0.5.6:graphics/glitz

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-glitz


REGRESS_DEPENDS=	:ghostscript-*:print/ghostscript/gnu
SEPARATE_BUILD=		simple

.include <bsd.port.mk>
