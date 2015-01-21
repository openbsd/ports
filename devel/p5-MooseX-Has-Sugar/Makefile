# $OpenBSD: Makefile,v 1.7 2015/01/21 14:27:58 sthen Exp $

COMMENT=		Sugar syntax for moose 'has' fields
DISTNAME=		MooseX-Has-Sugar-0.05070419
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-MooseX-Types \
			devel/p5-Sub-Exporter \
			devel/p5-namespace-autoclean
TEST_DEPENDS=	devel/p5-Test-Fatal

.include <bsd.port.mk>
