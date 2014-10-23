# $OpenBSD: Makefile,v 1.1.1.1 2014/10/23 19:17:59 nigel Exp $

COMMENT =	parse directory listing

DISTNAME =	File-Listing-6.04
CPAN_AUTHOR =	GAAS
CATEGORIES =	devel

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	 Yes

MODULES =	cpan

RUN_DEPENDS =	www/p5-HTTP-Date>=6.00
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
