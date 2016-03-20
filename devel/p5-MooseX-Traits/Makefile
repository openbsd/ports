# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:29 naddy Exp $

COMMENT=		automatically apply roles at object creation time

DISTNAME=		MooseX-Traits-0.12

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
PKG_ARCH=		*

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
