# $OpenBSD: Makefile,v 1.4 2013/03/11 11:44:46 espie Exp $

COMMENT =	adds support for SOCKS to p5-libwww

DISTNAME =	LWP-Protocol-socks-1.5
CATEGORIES =	www
CPAN_AUTHOR =	SCR

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

RUN_DEPENDS =	security/p5-IO-Socket-SSL \
		net/p5-IO-Socket-Socks
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
