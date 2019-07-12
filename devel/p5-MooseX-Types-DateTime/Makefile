# $OpenBSD: Makefile,v 1.10 2019/07/12 20:45:02 sthen Exp $

COMMENT=		DateTime related constraints and coercions for Moose

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		MooseX-Types-DateTime-0.10
REVISION=		1
CATEGORIES=		devel

MAINTAINER=		Gleydson Soares <gsoares@openbsd.org>

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-DateTime \
			devel/p5-Moose \
			devel/p5-MooseX-Types>=0.30			
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=		devel/p5-Test-Fatal

.include <bsd.port.mk>
