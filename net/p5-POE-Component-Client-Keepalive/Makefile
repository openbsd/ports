# $OpenBSD: Makefile,v 1.14 2019/07/12 20:48:41 sthen Exp $

COMMENT=	manage connections, with keep-alive

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	POE-Component-Client-Keepalive-0.272
EPOCH=		0
CATEGORIES=	net
FIX_EXTRACT_PERMISSIONS=Yes

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-POE \
		net/p5-Net-IP-Minimal \
		net/p5-POE-Component-Resolver

# It would require Pod::Coverage::TrustPod that we don't ship
TEST_ENV=	RELEASE_TESTING=0

.include <bsd.port.mk>
