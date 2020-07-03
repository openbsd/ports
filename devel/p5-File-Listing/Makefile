# $OpenBSD: Makefile,v 1.4 2020/07/03 21:44:53 sthen Exp $

COMMENT =	parse directory listing

DISTNAME =	File-Listing-6.04
CPAN_AUTHOR =	GAAS
CATEGORIES =	devel
REVISION =	0

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	www/p5-HTTP-Date>=6.00
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
