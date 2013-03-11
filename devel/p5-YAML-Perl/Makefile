# $OpenBSD: Makefile,v 1.3 2013/03/11 10:50:24 espie Exp $

COMMENT=		pure Perl implementation of YAML

DISTNAME=		YAML-Perl-0.02
CATEGORIES=		devel

MODULES=		cpan
CPAN_AUTHOR=		INGY

# Perl
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Error
TEST_DEPENDS=	devel/p5-Test-Deep \
			devel/p5-YAML-XS

.include <bsd.port.mk>
