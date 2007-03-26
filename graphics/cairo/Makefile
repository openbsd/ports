# $OpenBSD: Makefile,v 1.11 2007/03/26 21:22:13 espie Exp $

COMMENT=		"vector graphics library"

DISTNAME=		cairo-1.2.6
PKGNAME=		${DISTNAME}p1
SHARED_LIBS +=	cairo                6.0      # .11.3
CATEGORIES=		graphics

HOMEPAGE=		http://cairographics.org/introduction

MAINTAINER=		Eric Faurot <eric.faurot@gmail.com>

WANTLIB=		ICE SM X11.>=10 Xext Xrender freetype fontconfig m z

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
