# $OpenBSD: Makefile,v 1.19 2013/11/03 14:58:22 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	RSA encoding and decoding using OpenSSL

MODULES =	cpan

DISTNAME =	Crypt-OpenSSL-RSA-0.26
REVISION =	3
CATEGORIES =	security
HOMEPAGE =	http://perl-openssl.sourceforge.net/

# Perl
PERMIT_PACKAGE_CDROM = Yes

WANTLIB +=	c crypto ssl

RUN_DEPENDS =	security/p5-Crypt-OpenSSL-Random>=0.03 \
		security/p5-Crypt-OpenSSL-Bignum>=0.03
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
