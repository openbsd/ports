# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:16 espie Exp $

COMMENT=		localization data for perl DateTime.pm

MODULES=		cpan
DISTNAME=		DateTime-Locale-0.45
REVISION=		0
CATEGORIES=		devel
USE_GROFF =		Yes

# Perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=		devel/p5-List-MoreUtils \
			devel/p5-Params-Validate
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	modbuild
TEST_DEPENDS=	devel/p5-Test-Output

.include <bsd.port.mk>
