# $OpenBSD: Makefile,v 1.6 2006/12/29 10:19:52 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	"RSA encoding and decoding using OpenSSL"

MODULES=	cpan

DISTNAME=	Crypt-OpenSSL-RSA-0.24
CATEGORIES=	security
HOMEPAGE=	http://perl-openssl.sourceforge.net/

MAINTAINER=	Andreas Voegele <andreas@altroot.de>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		crypto ssl

RUN_DEPENDS=	:p5-Crypt-OpenSSL-Random->=0.03:security/p5-Crypt-OpenSSL-Random \
		:p5-Crypt-OpenSSL-Bignum->=0.03:security/p5-Crypt-OpenSSL-Bignum
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
