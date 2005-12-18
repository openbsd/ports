# $OpenBSD: Makefile,v 1.5 2005/12/18 00:12:48 steven Exp $

COMMENT=	"extends the Net::DNS module with DNSSEC functionality"

VERSION=	0.13
DISTNAME=	Net-DNS-SEC-${VERSION}
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
		::security/p5-Digest-SHA1

CONFIGURE_STYLE=	perl

PKG_ARCH=	*

.include <bsd.port.mk>
