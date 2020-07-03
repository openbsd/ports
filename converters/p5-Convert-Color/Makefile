# $OpenBSD: Makefile,v 1.8 2020/07/03 21:44:32 sthen Exp $

COMMENT=	color space conversions and named lookups

DISTNAME =	Convert-Color-0.11
CATEGORIES=	converters
MODULES=	cpan
PKG_ARCH=	*
REVISION =	0

# Perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/p5-List-UtilsBy
TEST_DEPENDS =	devel/p5-Test-Number-Delta

CONFIGURE_STYLE=modbuild
MODCPAN_EXAMPLES=Yes

.include <bsd.port.mk>
