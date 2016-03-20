# $OpenBSD: Makefile,v 1.6 2016/03/20 19:56:07 naddy Exp $

COMMENT=	color space conversions and named lookups

DISTNAME =	Convert-Color-0.11
CATEGORIES=	converters
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/p5-List-UtilsBy
TEST_DEPENDS =	devel/p5-Test-Number-Delta

CONFIGURE_STYLE=modbuild
MODCPAN_EXAMPLES=Yes

.include <bsd.port.mk>
