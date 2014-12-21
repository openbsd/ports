# $OpenBSD: Makefile,v 1.5 2014/12/21 13:55:51 benoit Exp $

COMMENT=	color space conversions and named lookups

DISTNAME =	Convert-Color-0.11
CATEGORIES=	converters
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/p5-List-UtilsBy
TEST_DEPENDS =	devel/p5-Test-Number-Delta

CONFIGURE_STYLE=modbuild
MODCPAN_EXAMPLES=Yes

.include <bsd.port.mk>
