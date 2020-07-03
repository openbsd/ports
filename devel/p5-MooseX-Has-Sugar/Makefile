# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:02 sthen Exp $

COMMENT=		Sugar syntax for moose 'has' fields
DISTNAME=		MooseX-Has-Sugar-1.000006
CATEGORIES=		devel
REVISION=		0

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-MooseX-Types \
			devel/p5-Sub-Exporter \
			devel/p5-namespace-autoclean
TEST_DEPENDS=		devel/p5-Test-Fatal

.include <bsd.port.mk>
