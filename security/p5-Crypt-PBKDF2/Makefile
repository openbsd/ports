COMMENT =	PBKDF2 password hash algorithm

DISTNAME =	Crypt-PBKDF2-0.261630
CPAN_AUTHOR =	ARODLAND

CATEGORIES =	security

MAINTAINER =	Wen Heping <wenheping2000@hotmail.com>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Module-Runtime \
			devel/p5-Moo>=2 \
			devel/p5-Try-Tiny>=0.04 \
			devel/p5-Type-Tiny>=1.000005 \
			devel/p5-namespace-autoclean \
			devel/p5-strictures>=2 \
			security/p5-Crypt-URandom \
			security/p5-Digest-HMAC>=1.01 \
			security/p5-Digest-SHA3>=0.22
TEST_DEPENDS =		devel/p5-Test-Fatal

CONFIGURE_STYLE =	modbuild tiny

PKG_ARCH =		*

.include <bsd.port.mk>
