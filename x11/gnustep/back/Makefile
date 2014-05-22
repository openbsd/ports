# $OpenBSD: Makefile,v 1.34 2014/05/22 09:48:56 sebastia Exp $

COMMENT=	GNUstep gui backend

V =		0.24.0
DISTNAME=	gnustep-back-${V}
REVISION =	0

CATEGORIES=	devel

HOMEPAGE=	http://www.gnustep.org/
MASTER_SITES=	${MASTER_SITE_GNUSTEP:=core/}

MODULES =	x11/gnustep
MODGNUSTEP_NEEDS_BACK=	No

WANTLIB += 	Xft Xrender cairo Xfixes Xcursor
WANTLIB += 	freetype GL X11 Xext Xmu Xt

LIB_DEPENDS=	graphics/cairo

BACKENDV=	${V:C/([0-9])*[.]([0-9]*).*/\1\2/1}
SUBST_VARS=	BACKENDV

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -lm"
CONFIGURE_ARGS=	--with-x \
		--disable-glitz \
		--enable-graphics=cairo

.include <bsd.port.mk>
