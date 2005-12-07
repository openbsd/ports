# $OpenBSD: Makefile,v 1.4 2005/12/07 19:53:51 wilfried Exp $

COMMENT=	"extends the Net::DNS module with DNSSEC functionality"

VERSION=	0.12
DISTNAME=	Net-DNS-SEC-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Net-DNS->=0.44:net/p5-Net-DNS \
		:p5-Digest-BubbleBabble->=0.01:security/p5-Digest-BubbleBabble \
		:p5-Crypt-OpenSSL-RSA->=0.19:security/p5-Crypt-OpenSSL-RSA \
		:p5-Crypt-OpenSSL-DSA->=0.10:security/p5-Crypt-OpenSSL-DSA \
		:p5-Crypt-OpenSSL-Bignum->=0.03:security/p5-Crypt-OpenSSL-Bignum

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
