# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:21 sthen Exp $

FIX_EXTRACT_PERMISSIONS = Yes

COMMENT =	turn on strict and make most warnings fatal

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	strictures-2.000005
CATEGORIES =	devel
REVISION =	1

CPAN_AUTHOR =	ETHER

# Perl
PERMIT_PACKAGE =	Yes

# These allow additional strictures to be used, should we ever
# get them ported.
#RUN_DEPENDS +=	CPAN/p5-bareword-filehandles \
#		CPAN/p5-multidimensional \

.include <bsd.port.mk>
