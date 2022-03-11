COMMENT=	perl interface to the cairo library

MODULES=	cpan
DISTNAME=	Cairo-1.109
CATEGORIES=	graphics devel
CPAN_AUTHOR=	XAOC

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c cairo freetype perl z

LIB_DEPENDS=	graphics/cairo

BUILD_DEPENDS=	devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig

.include <bsd.port.mk>
