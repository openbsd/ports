# $OpenBSD: Makefile,v 1.7 2007/07/18 09:41:07 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	"RSA encoding and decoding using OpenSSL"

MODULES=	cpan

DISTNAME=	Crypt-OpenSSL-RSA-0.25
CATEGORIES=	security
HOMEPAGE=	http://perl-openssl.sourceforge.net/

MAINTAINER=	Andreas Voegele <andreas@kurzegasse.de>

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
