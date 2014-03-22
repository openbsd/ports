# $OpenBSD: Makefile,v 1.8 2014/03/22 14:06:09 jasper Exp $

COMMENT=		automatically apply roles at object creation time

DISTNAME=		MooseX-Traits-0.12

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-Sub-Exporter \
			devel/p5-namespace-autoclean
BUILD_DEPENDS=		${RUN_DEPENDS}

TEST_DEPENDS=		devel/p5-Test-Exception \
			devel/p5-Test-Fatal \
			devel/p5-Test-Requires \
			devel/p5-MooseX-Role-Parameterized \
			devel/p5-Test-use-ok

.include <bsd.port.mk>
