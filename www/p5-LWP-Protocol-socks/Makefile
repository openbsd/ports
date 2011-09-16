# $OpenBSD: Makefile,v 1.3 2011/09/16 18:08:06 nigel Exp $

COMMENT =	adds support for SOCKS to p5-libwww

DISTNAME =	LWP-Protocol-socks-1.5
CATEGORIES =	www
CPAN_AUTHOR =	SCR

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	cpan

RUN_DEPENDS =	security/p5-IO-Socket-SSL \
		net/p5-IO-Socket-Socks
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
