# $OpenBSD: Makefile,v 1.41 2019/01/25 13:18:50 cwen Exp $

COMMENT=	generate and manipulate images

DISTNAME =	Imager-1.009
CATEGORIES=	graphics
MODULES=	cpan

MAINTAINER=	Peter Valchev <pvalchev@sightly.net>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c freetype gif jpeg m perl png16 t1 tiff z

LIB_DEPENDS=	devel/t1lib \
		graphics/png \
		graphics/jpeg \
		graphics/tiff \
		graphics/giflib

TEST_DEPENDS =	devel/p5-Inline

TEST_ENV =	AUTOMATED_TESTING=1
MAKE_ENV +=	TEST_POD=Yes

CONFIGURE_ARGS=	--enable JPEG,TIFF,PNG,GIF,T1,FT2 \
		--incpath="${LOCALBASE}/include:${X11BASE}/include" \
		--libpath="${LOCALBASE}/lib:${X11BASE}/lib"

.include <bsd.port.mk>
