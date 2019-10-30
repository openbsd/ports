# $OpenBSD: Makefile,v 1.45 2019/10/30 18:11:13 sthen Exp $

COMMENT=	generate and manipulate images

DISTNAME=	Imager-1.011
CATEGORIES=	graphics
MODULES=	cpan

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c freetype gif jpeg m perl png t1 tiff z

LIB_DEPENDS=	devel/t1lib \
		graphics/png \
		graphics/jpeg \
		graphics/tiff \
		graphics/giflib

TEST_DEPENDS=	devel/p5-Inline

TEST_ENV=	AUTOMATED_TESTING=1
MAKE_ENV+=	TEST_POD=Yes

CONFIGURE_ARGS=	--enable JPEG,TIFF,PNG,GIF,T1,FT2 \
		--incpath="${LOCALBASE}/include:${X11BASE}/include" \
		--libpath="${LOCALBASE}/lib:${X11BASE}/lib"

.include <bsd.port.mk>
