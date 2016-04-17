# $OpenBSD: Makefile,v 1.39 2016/04/17 19:01:22 afresh1 Exp $

COMMENT=	generate and manipulate images

DISTNAME =	Imager-1.005
CATEGORIES=	graphics
MODULES=	cpan

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

TEST_DEPENDS =	devel/p5-Inline \
		devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage

TEST_ENV =	AUTOMATED_TESTING=1

CONFIGURE_ARGS=	--enable JPEG,TIFF,PNG,GIF,T1,FT2 \
		--incpath="${LOCALBASE}/include:${X11BASE}/include" \
		--libpath="${LOCALBASE}/lib:${X11BASE}/lib"

.include <bsd.port.mk>
