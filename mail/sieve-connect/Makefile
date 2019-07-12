# $OpenBSD: Makefile,v 1.9 2019/07/12 20:47:38 sthen Exp $

COMMENT =	perl sieveshell-compatible ManageSieve client

GH_VER =	v0.87
V =		${GH_VER:S/v//}
PROJECT =	sieve-connect
DISTNAME =	${PROJECT}-${V}
CATEGORIES =	mail
PKG_ARCH =	*
REVISION =	0

MAINTAINER =	LEVAI Daniel <leva@ecentrum.hu>

HOMEPAGE =	http://github.com/philpennock/${PROJECT}
MASTER_SITES =	http://github.com/philpennock/${PROJECT}/releases/download/${GH_VER}/

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
