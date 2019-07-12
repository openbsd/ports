# $OpenBSD: Makefile,v 1.12 2019/07/12 21:02:17 sthen Exp $

COMMENT=		automatically apply roles at object creation time

DISTNAME =		MooseX-Traits-0.13

CATEGORIES=		devel

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-Sub-Exporter \
			devel/p5-namespace-autoclean
BUILD_DEPENDS=		${RUN_DEPENDS}

TEST_DEPENDS=		devel/p5-Test-Exception \
			devel/p5-Test-Fatal \
			devel/p5-Test-Requires \
			devel/p5-MooseX-Role-Parameterized

CONFIGURE_STYLE =	modbuild tiny

.include <bsd.port.mk>
