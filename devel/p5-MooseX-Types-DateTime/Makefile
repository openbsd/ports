# $OpenBSD: Makefile,v 1.5 2014/03/25 09:36:03 jasper Exp $

COMMENT=		DateTime related constraints and coercions for Moose

MODULES=		cpan
DISTNAME=		MooseX-Types-DateTime-0.10
REVISION=		0
CATEGORIES=		devel

USE_GROFF=		Yes

MAINTAINER=		Gleydson Soares <gsoares@trusted.com.br>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-DateTime \
			devel/p5-Moose \
			devel/p5-MooseX-Types>=0.30			
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=		devel/p5-Test-use-ok \
			devel/p5-Test-Fatal

.include <bsd.port.mk>
