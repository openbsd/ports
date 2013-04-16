# $OpenBSD: Makefile,v 1.6 2013/04/16 10:22:11 sthen Exp $

COMMENT =	perl sieveshell-compatible ManageSieve client

DISTNAME =	sieve-connect-0.85
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
		security/p5-IO-Socket-SSL>=1.14 \
		security/p5-Authen-SASL \
		devel/p5-Term-ReadKey

do-configure:
	@perl -pi -e 's,^PREFIX=.*,,' ${WRKSRC}/Makefile

.include <bsd.port.mk>
