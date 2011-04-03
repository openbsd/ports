# $OpenBSD: Makefile,v 1.15 2011/04/03 17:27:06 jasper Exp $

COMMENT=	extends the Net::DNS module with DNSSEC functionality

MODULES=	cpan
DISTNAME=	Net-DNS-SEC-0.16
CATEGORIES=	net security

HOMEPAGE=	http://www.net-dns.org/

MAINTAINER=	Gleydson Soares <gsoares@trusted.com.br>

# BSD-license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	mail/p5-MIME-Base32 \
		net/p5-Net-DNS>=0.64 \
		security/p5-Digest-BubbleBabble>=0.01 \
		security/p5-Crypt-OpenSSL-RSA>=0.19 \
		security/p5-Crypt-OpenSSL-DSA>=0.10 \
		security/p5-Crypt-OpenSSL-Bignum>=0.03 \
		security/p5-Digest-SHA1

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	demo

.include <bsd.port.mk>
