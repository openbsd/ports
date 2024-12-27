PKG_ARCH=	*

COMMENT=	tool to check the quality of a DNS zone

MODULES=	cpan
CPAN_AUTHOR=	ZNMSTR
V=		7.1.0
DISTNAME=	Zonemaster-CLI-v$V
PKGNAME=	zonemaster-$V
CATEGORIES=	net

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	perl

CONFIGURE_STYLE= modinst

USE_GMAKE=	Yes
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Readonly \
		net/p5-Net-IP-XS \
		converters/p5-JSON-XS \
		devel/p5-libintl \
		devel/p5-Try-Tiny \
		net/p5-Zonemaster/ldns>=4.1.0 \
		net/p5-Zonemaster/engine>=7.0.0
TEST_DEPENDS=	textproc/p5-JSON-Validator \
		devel/p5-Test-Differences

.include <bsd.port.mk>
