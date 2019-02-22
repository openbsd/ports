# $OpenBSD: Makefile,v 1.13 2019/02/22 17:20:39 cwen Exp $

COMMENT=		structured Type Constraints for Moose

DISTNAME =		MooseX-Types-Structured-0.36

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Devel-PartialDump \
			devel/p5-MooseX-Types>=0.22 \
			devel/p5-Sub-Exporter
BUILD_DEPENDS=		${RUN_DEPENDS}

TEST_DEPENDS=		devel/p5-DateTime \
			devel/p5-MooseX-Types-DateTime \
			devel/p5-Test-Fatal \
			devel/p5-Test-Needs

CONFIGURE_STYLE =	modbuild tiny

.include <bsd.port.mk>
