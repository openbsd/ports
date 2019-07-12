# $OpenBSD: Makefile,v 1.7 2019/07/12 20:43:50 sthen Exp $

COMMENT=	color space conversions and named lookups

DISTNAME =	Convert-Color-0.11
CATEGORIES=	converters
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/p5-List-UtilsBy
TEST_DEPENDS =	devel/p5-Test-Number-Delta

CONFIGURE_STYLE=modbuild
MODCPAN_EXAMPLES=Yes

.include <bsd.port.mk>
