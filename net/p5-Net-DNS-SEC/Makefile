# $OpenBSD: Makefile,v 1.14 2010/11/19 22:31:36 espie Exp $

COMMENT=	extends the Net::DNS module with DNSSEC functionality

MODULES=	cpan
DISTNAME=	Net-DNS-SEC-0.15
CATEGORIES=	net
USE_GROFF =	Yes

HOMEPAGE=	http://www.net-dns.org/

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

.include <bsd.port.mk>
