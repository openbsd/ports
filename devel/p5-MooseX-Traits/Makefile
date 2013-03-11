# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:19 espie Exp $

COMMENT=		automatically apply roles at object creation time

DISTNAME=		MooseX-Traits-0.11

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-Sub-Exporter \
			devel/p5-namespace-autoclean
BUILD_DEPENDS=		${RUN_DEPENDS}

TEST_DEPENDS=	devel/p5-Test-Exception \
			devel/p5-MooseX-Role-Parameterized # for author tests

.include <bsd.port.mk>
