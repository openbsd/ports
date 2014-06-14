# $OpenBSD: Makefile,v 1.6 2014/06/14 23:25:21 sthen Exp $

BROKEN=		needs further tweaking for giflib 5.0+

SHARED_ONLY=	Yes

COMMENT=	low-overhead image rescaling module for Perl

DISTNAME=	Image-Scale-0.08
REVISION=	2
CATEGORIES=	graphics

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c gif jpeg png z

MODULES=	cpan

LIB_DEPENDS=	graphics/giflib \
		graphics/jpeg \
		graphics/png

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_ARGS=	--with-jpeg-libs="${LOCALBASE}/lib" \
		--with-png-include="${LOCALBASE}/include" \
		--with-png-libs="${LOCALBASE}/lib" \
		--with-gif-libs="${LOCALBASE}/lib"

TEST_DEPENDS= devel/p5-Test-NoWarnings \
		devel/p5-Test-Pod

.include <bsd.port.mk>
