# $OpenBSD: Makefile,v 1.11 2015/06/13 08:37:31 benoit Exp $

COMMENT=		structured Type Constraints for Moose

DISTNAME =		MooseX-Types-Structured-0.33

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-Devel-PartialDump \
			devel/p5-MooseX-Types>=0.22 \
			devel/p5-MooseX-Types-DateTime \
			devel/p5-Sub-Exporter
BUILD_DEPENDS=		${RUN_DEPENDS}

TEST_DEPENDS =		devel/p5-Test-Fatal \
			devel/p5-Test-Requires

.include <bsd.port.mk>
