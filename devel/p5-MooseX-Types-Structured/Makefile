# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:19 espie Exp $

COMMENT=		structured Type Constraints for Moose

DISTNAME=		MooseX-Types-Structured-0.26

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-Devel-PartialDump \
			devel/p5-MooseX-Types>=0.22 \
			devel/p5-MooseX-Types-DateTime \
			devel/p5-Sub-Exporter
BUILD_DEPENDS=		${RUN_DEPENDS}

TEST_DEPENDS=	devel/p5-Test-Fatal

.include <bsd.port.mk>
