COMMENT =	perl extension to OpenSSL PKCS10 API

DISTNAME =	Crypt-OpenSSL-PKCS10-0.37
CPAN_AUTHOR =	TIMLEGGE

CATEGORIES =	security

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto perl ssl

MODULES =		cpan

BUILD_DEPENDS =		security/p5-Crypt-OpenSSL-Guess>=0.11
RUN_DEPENDS =		security/p5-Crypt-OpenSSL-RSA
TEST_DEPENDS =		devel/p5-File-Slurper \
			devel/p5-Import-Into \
			devel/p5-Test-Lib

.include <bsd.port.mk>
