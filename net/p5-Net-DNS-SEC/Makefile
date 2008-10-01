# $OpenBSD: Makefile,v 1.11 2008/10/01 21:54:55 sthen Exp $

COMMENT=	extends the Net::DNS module with DNSSEC functionality

MODULES=	cpan
DISTNAME=	Net-DNS-SEC-0.14
PKGNAME=	p5-${DISTNAME}p2
CATEGORIES=	net

HOMEPAGE=	http://www.net-dns.org/

# BSD-license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Net-DNS->=0.44:net/p5-Net-DNS \
		:p5-Digest-BubbleBabble->=0.01:security/p5-Digest-BubbleBabble \
		:p5-Crypt-OpenSSL-RSA->=0.19:security/p5-Crypt-OpenSSL-RSA \
		:p5-Crypt-OpenSSL-DSA->=0.10:security/p5-Crypt-OpenSSL-DSA \
		:p5-Crypt-OpenSSL-Bignum->=0.03:security/p5-Crypt-OpenSSL-Bignum \
		:p5-Digest-SHA1-*:security/p5-Digest-SHA1

.include <bsd.port.mk>
