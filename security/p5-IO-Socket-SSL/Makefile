# $OpenBSD: Makefile,v 1.123 2020/02/14 22:46:04 bluhm Exp $

COMMENT =	Perl SSL sockets with IO::Socket interface

DISTNAME =	IO-Socket-SSL-2.067

CATEGORIES =	security

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		security/p5-Net_SSLeay>=1.88
TEST_DEPENDS =		net/p5-IO-Socket-INET6>=2.62 \
			converters/p5-Net-IDN-Encode \
			www/p5-URI>=1.50

PKG_ARCH =		*

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	example

.include <bsd.port.mk>
