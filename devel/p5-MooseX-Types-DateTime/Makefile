# $OpenBSD: Makefile,v 1.12 2020/07/24 01:30:01 afresh1 Exp $

COMMENT=		DateTime related constraints and coercions for Moose

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		MooseX-Types-DateTime-0.13
CATEGORIES=		devel

FIX_EXTRACT_PERMISSIONS=	Yes

MAINTAINER=		Gleydson Soares <gsoares@openbsd.org>

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-DateTime>=0.4302 \
			devel/p5-DateTime-Locale>=0.4001 \
			devel/p5-DateTime-TimeZone>=0.95 \
			devel/p5-Moose>=0.41 \
			devel/p5-MooseX-Types>=0.30 \
			devel/p5-namespace-clean>=0.19
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=		devel/p5-Moose \
			devel/p5-Test-Fatal

.include <bsd.port.mk>
