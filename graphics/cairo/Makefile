# $OpenBSD: Makefile,v 1.2 2005/11/04 01:12:58 naddy Exp $

COMMENT=		"vector graphics library"

DISTNAME=		cairo-1.0.2
CATEGORIES=		graphics

HOMEPAGE=		http://cairographics.org/introduction

MAINTAINER=		Eric Faurot <eric.faurot@gmail.com>

WANTLIB=		X11 Xext Xrender freetype fontconfig m z

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cairographics.org/releases/

USE_X11=		Yes
USE_LIBTOOL=		Yes

BUILD_DEPENDS+=		:pkgconfig-*:devel/pkgconfig

LIB_DEPENDS=		png::graphics/png \
			glitz::graphics/glitz

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=  	PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig"
CONFIGURE_ARGS+=	--enable-ps
CONFIGURE_ARGS+=	--enable-pdf
CONFIGURE_ARGS+=	--enable-glitz

.include <bsd.port.mk>
