PKG_ARCH=	*

COMMENT=	tool to check the quality of a DNS zone

MODULES=	cpan
CPAN_AUTHOR=	ZNMSTR
V=		8.0.2
DISTNAME=	Zonemaster-CLI-v$V
PKGNAME=	zonemaster-$V
CATEGORIES=	net
REVISION=	0

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	perl

CONFIGURE_STYLE= modinst

USE_GMAKE=	Yes
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/p5-JSON-XS \
		devel/p5-libintl \
		net/p5-Net-IP-XS \
		devel/p5-Readonly \
		devel/p5-Try-Tiny \
		net/p5-Zonemaster/engine>=9.0.0 \
		net/p5-Zonemaster/ldns>=5.1.0
TEST_DEPENDS=	devel/p5-Test-Differences
# needs textproc/p5-JSON-Validator, not ported

.include <bsd.port.mk>
