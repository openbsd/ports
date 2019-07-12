# $OpenBSD: Makefile,v 1.13 2019/07/12 20:48:41 sthen Exp $

COMMENT=	POE HTTP user-agent component

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	POE-Component-Client-HTTP-0.949
CATEGORIES=	net www
FIX_EXTRACT_PERMISSIONS=Yes

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-POE>=1.312 \
		net/p5-POE-Component-Client-Keepalive>=0.271 \
		www/p5-URI \
		www/p5-libwww

TEST_DEPENDS=	devel/p5-Test-POE-Server-TCP \
		net/p5-POE-Component-Resolver \
		security/p5-POE-Component-SSLify

# It would require Pod::Coverage::TrustPod that we don't ship.
TEST_ENV=	RELEASE_TESTING=0

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
