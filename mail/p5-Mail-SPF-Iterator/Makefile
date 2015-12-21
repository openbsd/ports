# $OpenBSD: Makefile,v 1.17 2015/12/21 20:40:37 bluhm Exp $

COMMENT =		iterative SPF lookup

DISTNAME =		Mail-SPF-Iterator-1.112

CATEGORIES =		mail

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/p5-Net-DNS>=0.62 \
			www/p5-URI
TEST_DEPENDS =	net/p5-IO-Socket-INET6 \
			net/p5-Socket6

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/samples/spflookup.pl ${PREFIX}/bin/spflookup

.include <bsd.port.mk>
