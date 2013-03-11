# $OpenBSD: Makefile,v 1.13 2013/03/11 11:35:54 espie Exp $

COMMENT=	DNS module for the Perl Object Environment

MODULES=	cpan
DISTNAME=	POE-Component-Client-DNS-1.051
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-POE \
		net/p5-Net-DNS
BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=devel/p5-Test-NoWarnings

.include <bsd.port.mk>
