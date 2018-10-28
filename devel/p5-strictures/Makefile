# $OpenBSD: Makefile,v 1.6 2018/10/28 03:09:16 afresh1 Exp $

COMMENT =	turn on strict and make most warnings fatal

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	strictures-2.000005
CATEGORIES =	devel

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

CPAN_AUTHOR =	ETHER

# Perl
PERMIT_PACKAGE_CDROM =	Yes

# These allow additional strictures to be used, should we ever
# get them ported.
#RUN_DEPENDS +=	CPAN/p5-bareword-filehandles \
#		CPAN/p5-multidimensional \

.include <bsd.port.mk>
