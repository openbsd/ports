# $OpenBSD: Makefile,v 1.3 2014/03/24 07:55:05 jasper Exp $

COMMENT=		use standard configuration files

MODULES=		cpan
DISTNAME=		Config-Std-0.901
CATEGORIES=		devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-Class-Std
BUILD_DEPENDS=		${RUN_DEPENDS}

TEST_DEPENDS=		devel/p5-Test-Distribution \
			devel/p5-Test-Pod-Coverage>=1.04

.include <bsd.port.mk>
