# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:19 espie Exp $

COMMENT=		Sugar syntax for moose 'has' fields
DISTNAME=		MooseX-Has-Sugar-0.05070419
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-MooseX-Types \
			devel/p5-Sub-Exporter \
			devel/p5-namespace-autoclean
TEST_DEPENDS=	devel/p5-Test-Fatal

.include <bsd.port.mk>
