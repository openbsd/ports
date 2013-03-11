# $OpenBSD: Makefile,v 1.52 2013/03/11 11:41:27 espie Exp $

COMMENT =		perl interface to SSL sockets

DISTNAME =		IO-Socket-SSL-1.83

CATEGORIES =		security

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		security/p5-Net_SSLeay>=1.33
TEST_DEPENDS =	net/p5-IO-Socket-INET6 \
			converters/p5-Net-IDN-Encode \
			www/p5-URI>=1.50

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	example

.include <bsd.port.mk>
