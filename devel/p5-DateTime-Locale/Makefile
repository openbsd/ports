# $OpenBSD: Makefile,v 1.13 2015/02/16 22:57:08 naddy Exp $

COMMENT=		localization data for perl DateTime.pm

MODULES=		cpan
DISTNAME=		DateTime-Locale-0.45
REVISION=		0
CATEGORIES=		devel

# Perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=		devel/p5-List-MoreUtils \
			devel/p5-Params-Validate
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	modbuild
TEST_DEPENDS=	devel/p5-Test-Output

.include <bsd.port.mk>
