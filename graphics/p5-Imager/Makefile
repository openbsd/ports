# $OpenBSD: Makefile,v 1.34 2014/06/14 23:25:21 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	generate and manipulate images

DISTNAME=	Imager-0.97
CATEGORIES=	graphics
MODULES=	cpan
REVISION=	0

HOMEPAGE=	http://imager.perl.org/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += freetype gif jpeg m png t1 tiff z

LIB_DEPENDS=	devel/t1lib \
		graphics/png \
		graphics/jpeg \
		graphics/tiff \
		graphics/giflib

CONFIGURE_ARGS=	--enable jpeg,tiff,png,gif,T1-fonts,freetype2 \
		--incpath="${LOCALBASE}/include:${X11BASE}/include" \
		--libpath="${LOCALBASE}/lib:${X11BASE}/lib"
USE_GMAKE=	Yes

.include <bsd.port.mk>
