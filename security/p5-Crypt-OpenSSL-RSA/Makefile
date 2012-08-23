# $OpenBSD: Makefile,v 1.17 2012/08/23 15:52:47 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	RSA encoding and decoding using OpenSSL

MODULES =	cpan

DISTNAME =	Crypt-OpenSSL-RSA-0.26
REVISION =	2
CATEGORIES =	security
HOMEPAGE =	http://perl-openssl.sourceforge.net/

# Perl
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

WANTLIB +=	c crypto ssl

RUN_DEPENDS =	security/p5-Crypt-OpenSSL-Random>=0.03 \
		security/p5-Crypt-OpenSSL-Bignum>=0.03
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
