# $OpenBSD: Makefile,v 1.38 2016/03/20 19:56:44 naddy Exp $

COMMENT=	generate and manipulate images

DISTNAME =	Imager-1.000
CATEGORIES=	graphics
MODULES=	cpan
REVISION =	1

HOMEPAGE=	http://imager.perl.org/

MAINTAINER=	Peter Valchev <pvalchev@sightly.net>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += freetype gif jpeg m perl png t1 tiff z

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
