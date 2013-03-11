# $OpenBSD: Makefile,v 1.4 2013/03/11 01:30:27 espie Exp $

COMMENT=	color space conversions and named lookups

DISTNAME=	Convert-Color-0.08
REVISION=	1
CATEGORIES=	converters
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/p5-List-UtilsBy

CONFIGURE_STYLE=modbuild
MODCPAN_EXAMPLES=Yes

.include <bsd.port.mk>
