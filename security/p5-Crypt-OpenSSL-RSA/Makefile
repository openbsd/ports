# $OpenBSD: Makefile,v 1.14 2010/12/27 10:55:16 jasper Exp $

SHARED_ONLY =	Yes

COMMENT =	RSA encoding and decoding using OpenSSL

MODULES =	cpan

DISTNAME =	Crypt-OpenSSL-RSA-0.26
CATEGORIES =	security
HOMEPAGE =	http://perl-openssl.sourceforge.net/

MAINTAINER =	Andreas Voegele <ports@andreasvoegele.com>

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
