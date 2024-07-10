COMMENT =	access OpenSSL X509 API from Perl

DISTNAME =	Crypt-OpenSSL-X509-2.0.0

CATEGORIES =	security

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto perl ssl

MODULES =		cpan

BUILD_DEPENDS =		security/p5-Crypt-OpenSSL-Guess
RUN_DEPENDS =		converters/p5-Convert-ASN1>=0.33

MAKE_ENV =		TEST_POD=Yes

post-extract:
	rm -rf -- ${WRKSRC}/local

.include <bsd.port.mk>
