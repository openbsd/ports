# $OpenBSD: Makefile,v 1.10 2019/07/12 20:45:01 sthen Exp $

COMMENT=		Sugar syntax for moose 'has' fields
DISTNAME=		MooseX-Has-Sugar-1.000006
CATEGORIES=		devel

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-MooseX-Types \
			devel/p5-Sub-Exporter \
			devel/p5-namespace-autoclean
TEST_DEPENDS=		devel/p5-Test-Fatal

.include <bsd.port.mk>
