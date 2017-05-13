# $OpenBSD: Makefile,v 1.10 2017/05/13 08:37:23 benoit Exp $

COMMENT=		automatically apply roles at object creation time

DISTNAME =		MooseX-Traits-0.13

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

CONFIGURE_STYLE =	modbuild tiny

.include <bsd.port.mk>
