# $OpenBSD: Makefile,v 1.12 2016/03/20 19:56:30 naddy Exp $

COMMENT=		structured Type Constraints for Moose

DISTNAME =		MooseX-Types-Structured-0.33

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Devel-PartialDump \
			devel/p5-MooseX-Types>=0.22 \
			devel/p5-MooseX-Types-DateTime \
			devel/p5-Sub-Exporter
BUILD_DEPENDS=		${RUN_DEPENDS}

TEST_DEPENDS =		devel/p5-Test-Fatal \
			devel/p5-Test-Requires

.include <bsd.port.mk>
