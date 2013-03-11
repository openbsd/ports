# $OpenBSD: Makefile,v 1.5 2013/03/11 11:23:53 espie Exp $

COMMENT =	perl sieveshell-compatible ManageSieve client

DISTNAME =	sieve-connect-0.84
CATEGORIES =	mail
PKG_ARCH =	*

MAINTAINER =	LEVAI Daniel <leva@ecentrum.hu>

HOMEPAGE =	http://people.spodhuis.org/phil.pennock/software/
MASTER_SITES =	${HOMEPAGE}

EXTRACT_SUFX =	.tar.bz2

# BSD
PERMIT_PACKAGE_CDROM =	Yes

NO_TEST =	Yes
RUN_DEPENDS =	net/p5-Net-DNS \
		net/p5-IO-Socket-INET6 \
		security/p5-IO-Socket-SSL \
		security/p5-Authen-SASL \
		devel/p5-Term-ReadKey

do-configure:
	@perl -pi -e 's,^PREFIX=.*,,' ${WRKSRC}/Makefile

.include <bsd.port.mk>
