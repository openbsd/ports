COMMENT =	routines for accessing the OpenSSL prng

MODULES =	cpan
DISTNAME =	Crypt-OpenSSL-Random-0.15
CATEGORIES =	security
CPAN_AUTHOR =	RURBAN

# perl
PERMIT_PACKAGE =	Yes

WANTLIB += 	c crypto perl ssl

MAKE_ENV +=	TEST_POD=Yes

RUN_DEPENDS =	security/p5-Crypt-OpenSSL-Guess
BUILD_DEPENDS = ${RUN_DEPENDS}

.include <bsd.port.mk>
