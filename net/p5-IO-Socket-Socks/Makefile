# $OpenBSD: Makefile,v 1.9 2017/09/07 18:58:40 nigel Exp $

COMMENT =	create SOCKS v4/v5 client or server

DISTNAME =	IO-Socket-Socks-0.74

CATEGORIES =	net
CPAN_AUTHOR =	OLEG

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

MODCPAN_EXAMPLES =	Yes

TEST_ENV += SOCKS_SLOW_TESTS=1

.include <bsd.port.mk>
