# $OpenBSD: Makefile,v 1.26 2020/07/03 21:45:27 sthen Exp $

COMMENT =	iterative SPF lookup

DISTNAME =	Mail-SPF-Iterator-1.119
REVISION =	0

CATEGORIES =	mail

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		net/p5-Net-DNS>=0.62 \
			www/p5-URI
TEST_DEPENDS =		net/p5-IO-Socket-INET6 \
			net/p5-Socket6

PKG_ARCH =		*

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/samples/spflookup.pl ${PREFIX}/bin/spflookup

.include <bsd.port.mk>
