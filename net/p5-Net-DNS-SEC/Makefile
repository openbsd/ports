# $OpenBSD: Makefile,v 1.20 2015/07/11 07:47:05 bluhm Exp $

COMMENT=	extends the Net::DNS module with DNSSEC functionality

MODULES=	cpan
DISTNAME=	Net-DNS-SEC-0.22
CATEGORIES=	net security

HOMEPAGE=	http://www.net-dns.org/

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =	http://www.net-dns.org/download/

RUN_DEPENDS=	mail/p5-MIME-Base32 \
		net/p5-Net-DNS>=0.69 \
		security/p5-Crypt-OpenSSL-RSA>=0.19 \
		security/p5-Crypt-OpenSSL-DSA>=0.10 \
		security/p5-Crypt-OpenSSL-Bignum>=0.04 \
		security/p5-Digest-SHA1
TEST_DEPENDS =	security/p5-Crypt-OpenSSL-Random>=0.06 \
		security/p5-Digest-BubbleBabble>=0.01

MAKE_ENV+=		TEST_POD=1

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	demo

.include <bsd.port.mk>
