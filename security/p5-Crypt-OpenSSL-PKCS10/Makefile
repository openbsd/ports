COMMENT =	Perl extension to OpenSSL's PKCS10 API

MODULES =	cpan

DISTNAME =	Crypt-OpenSSL-PKCS10-0.16
CATEGORIES =	security
REVISION =	0

# Perl
PERMIT_PACKAGE = Yes

WANTLIB +=	c crypto perl ssl

RUN_DEPENDS =	security/p5-Crypt-OpenSSL-RSA
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
