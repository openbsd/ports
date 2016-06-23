# $OpenBSD: Makefile,v 1.40 2016/06/23 20:59:45 sebastia Exp $

COMMENT=	GNUstep gui backend

V =		0.25.0
DISTNAME=	gnustep-back-${V}

CATEGORIES=	devel

HOMEPAGE=	http://www.gnustep.org/
MASTER_SITES=	${MASTER_SITE_GNUSTEP:=core/}

MODULES =	x11/gnustep
MODGNUSTEP_NEEDS_BACK=	No

WANTLIB += 	Xft Xrender cairo Xfixes Xcursor fontconfig
WANTLIB += 	freetype GL X11 Xext Xmu Xt z

LIB_DEPENDS=	graphics/cairo

BACKENDV=	${V:C/([0-9])*[.]([0-9]*).*/\1\2/1}
SUBST_VARS=	BACKENDV

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -lm"
CONFIGURE_ARGS=	--with-x \
		--disable-glitz \
		--enable-graphics=cairo

.include <bsd.port.mk>
