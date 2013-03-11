# $OpenBSD: Makefile,v 1.3 2013/03/11 11:10:54 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	low-overhead image rescaling module for Perl

DISTNAME=	Image-Scale-0.08
REVISION=	0
CATEGORIES=	graphics

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c gif jpeg png z

MODULES=	cpan

LIB_DEPENDS=	graphics/libungif \
		graphics/jpeg \
		graphics/png

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_ARGS=	--with-jpeg-libs="${LOCALBASE}/lib" \
		--with-png-include="${LOCALBASE}/include/libpng" \
		--with-png-libs="${LOCALBASE}/lib" \
		--with-gif-libs="${LOCALBASE}/lib"

TEST_DEPENDS= devel/p5-Test-NoWarnings \
		devel/p5-Test-Pod

.include <bsd.port.mk>
