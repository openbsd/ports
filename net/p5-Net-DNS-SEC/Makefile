# $OpenBSD: Makefile,v 1.7 2007/01/14 20:49:05 simon Exp $

COMMENT=	"extends the Net::DNS module with DNSSEC functionality"

MODULES=	cpan
DISTNAME=	Net-DNS-SEC-0.14
CATEGORIES=	net

HOMEPAGE=	http://www.net-dns.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

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
		:p5-Digest-SHA->=5.23:security/p5-Digest-SHA \
		:p5-Digest-SHA1-*:security/p5-Digest-SHA1

.include <bsd.port.mk>
