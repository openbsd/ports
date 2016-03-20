# $OpenBSD: Makefile,v 1.2 2016/03/20 19:56:23 naddy Exp $

COMMENT =	parse directory listing

DISTNAME =	File-Listing-6.04
CPAN_AUTHOR =	GAAS
CATEGORIES =	devel

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	 Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	www/p5-HTTP-Date>=6.00
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
