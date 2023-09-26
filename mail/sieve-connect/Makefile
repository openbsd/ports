COMMENT =	perl sieveshell-compatible ManageSieve client

V =		0.90
DISTNAME =	sieve-connect-${V}
CATEGORIES =	mail
PKG_ARCH =	*

MAINTAINER =	LEVAI Daniel <leva@ecentrum.hu>

HOMEPAGE =	http://github.com/philpennock/sieve-connect
SITES =		${HOMEPAGE}/releases/download/v${V}/

EXTRACT_SUFX =	.tar.bz2

# BSD
PERMIT_PACKAGE =	Yes

NO_TEST =	Yes
RUN_DEPENDS =	net/p5-Net-DNS \
		net/p5-IO-Socket-INET6 \
		security/p5-IO-Socket-SSL>=1.14 \
		security/p5-Authen-SASL

do-configure:
	@perl -pi -e 's,^PREFIX=.*,,' ${WRKSRC}/Makefile

.include <bsd.port.mk>
