# $OpenBSD: Makefile,v 1.23 2018/11/05 19:27:53 bluhm Exp $

COMMENT =	iterative SPF lookup

DISTNAME =	Mail-SPF-Iterator-1.118

CATEGORIES =	mail

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		net/p5-Net-DNS>=0.62 \
			www/p5-URI
TEST_DEPENDS =		net/p5-IO-Socket-INET6 \
			net/p5-Socket6

PKG_ARCH =		*

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/samples/spflookup.pl ${PREFIX}/bin/spflookup

.include <bsd.port.mk>
