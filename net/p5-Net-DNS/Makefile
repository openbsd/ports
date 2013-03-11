# $OpenBSD: Makefile,v 1.43 2013/03/11 11:35:52 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		module to interface the DNS resolver

MODULES=		cpan
DISTNAME=		Net-DNS-0.71
CATEGORIES=		net

HOMEPAGE=		http://www.net-dns.org/

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		security/p5-Digest-HMAC>=1.00
TEST_DEPENDS=	security/p5-Digest-BubbleBabble \
			devel/p5-Test-Pod

CONFIGURE_ARGS=		--online-tests

.include <bsd.port.mk>
