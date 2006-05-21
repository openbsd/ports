# $OpenBSD: Makefile,v 1.6 2006/05/21 13:02:00 steven Exp $

COMMENT=	"extends the Net::DNS module with DNSSEC functionality"

DISTNAME=	Net-DNS-SEC-0.14
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5

HOMEPAGE=	http://www.net-dns.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# BSD-license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/} \
		${HOMEPAGE}/download/

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Net-DNS->=0.44:net/p5-Net-DNS \
		:p5-Digest-BubbleBabble->=0.01:security/p5-Digest-BubbleBabble \
		:p5-Crypt-OpenSSL-RSA->=0.19:security/p5-Crypt-OpenSSL-RSA \
		:p5-Crypt-OpenSSL-DSA->=0.10:security/p5-Crypt-OpenSSL-DSA \
		:p5-Crypt-OpenSSL-Bignum->=0.03:security/p5-Crypt-OpenSSL-Bignum \
		:p5-Digest-SHA->=5.23:security/p5-Digest-SHA \
		:p5-Digest-SHA1-*:security/p5-Digest-SHA1

CONFIGURE_STYLE=	perl

PKG_ARCH=	*

.include <bsd.port.mk>
