# $OpenBSD: Makefile,v 1.44 2014/04/25 08:55:13 bluhm Exp $

SHARED_ONLY=		Yes

COMMENT=		module to interface the DNS resolver

MODULES=		cpan
DISTNAME=		Net-DNS-0.74
CATEGORIES=		net

HOMEPAGE=		http://www.net-dns.org/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		security/p5-Digest-HMAC>=1.01
TEST_DEPENDS=		security/p5-Digest-BubbleBabble \
			devel/p5-Test-Pod

CONFIGURE_ARGS=		--online-tests

.include <bsd.port.mk>
