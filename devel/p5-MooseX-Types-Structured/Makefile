# $OpenBSD: Makefile,v 1.10 2015/01/21 14:27:58 sthen Exp $

COMMENT=		structured Type Constraints for Moose

DISTNAME=		MooseX-Types-Structured-0.26

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-Devel-PartialDump \
			devel/p5-MooseX-Types>=0.22 \
			devel/p5-MooseX-Types-DateTime \
			devel/p5-Sub-Exporter
BUILD_DEPENDS=		${RUN_DEPENDS}

TEST_DEPENDS=	devel/p5-Test-Fatal

.include <bsd.port.mk>
