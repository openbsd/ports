# $OpenBSD: Makefile,v 1.14 2013/03/11 10:50:16 espie Exp $

COMMENT=		DateTime submodule for TZ

MODULES=		cpan
DISTNAME=		DateTime-TimeZone-1.19
REVISION=		0
CATEGORIES=		devel

# Perl
PERMIT_PACKAGE_CDROM=   Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Params-Validate \
			devel/p5-Class-Singleton

CONFIGURE_STYLE=	modbuild
USE_GROFF =		Yes
TEST_DEPENDS=	devel/p5-DateTime \
			devel/p5-Test-Output

.include <bsd.port.mk>	
