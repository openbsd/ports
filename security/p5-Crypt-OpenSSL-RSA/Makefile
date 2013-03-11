# $OpenBSD: Makefile,v 1.18 2013/03/11 11:41:26 espie Exp $

SHARED_ONLY =	Yes

COMMENT =	RSA encoding and decoding using OpenSSL

MODULES =	cpan

DISTNAME =	Crypt-OpenSSL-RSA-0.26
REVISION =	2
CATEGORIES =	security
HOMEPAGE =	http://perl-openssl.sourceforge.net/

# Perl
PERMIT_PACKAGE_CDROM = Yes

WANTLIB +=	c crypto ssl

RUN_DEPENDS =	security/p5-Crypt-OpenSSL-Random>=0.03 \
		security/p5-Crypt-OpenSSL-Bignum>=0.03
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
