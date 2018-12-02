# $OpenBSD: Makefile,v 1.16 2018/12/02 01:19:27 afresh1 Exp $

COMMENT=	DNS module for the Perl Object Environment

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	POE-Component-Client-DNS-1.054
CATEGORIES=	net
FIX_EXTRACT_PERMISSIONS=	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-POE \
		net/p5-Net-DNS
BUILD_DEPENDS=	${RUN_DEPENDS}
TEST_DEPENDS=	devel/p5-Test-NoWarnings

# requires  Pod::Coverage::TrustPod that we don't ship.
TEST_ENV=	AUTHOR_TESTING=0

.include <bsd.port.mk>
