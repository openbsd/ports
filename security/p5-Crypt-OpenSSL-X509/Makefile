COMMENT =	access OpenSSL X509 API from Perl

DISTNAME =	Crypt-OpenSSL-X509-1.915

CATEGORIES =	security

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto perl ssl

MODULES =		cpan

BUILD_DEPENDS =		security/p5-Crypt-OpenSSL-Guess

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
