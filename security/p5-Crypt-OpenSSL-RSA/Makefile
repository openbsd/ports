# $OpenBSD: Makefile,v 1.16 2012/01/07 13:48:39 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	RSA encoding and decoding using OpenSSL

MODULES =	cpan

DISTNAME =	Crypt-OpenSSL-RSA-0.26
REVISION =	1
CATEGORIES =	security
HOMEPAGE =	http://perl-openssl.sourceforge.net/

# Perl
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

WANTLIB =	crypto ssl

RUN_DEPENDS =	security/p5-Crypt-OpenSSL-Random>=0.03 \
		security/p5-Crypt-OpenSSL-Bignum>=0.03
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
