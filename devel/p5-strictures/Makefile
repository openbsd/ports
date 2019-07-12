# $OpenBSD: Makefile,v 1.9 2019/07/12 20:45:15 sthen Exp $

FIX_EXTRACT_PERMISSIONS = Yes

COMMENT =	turn on strict and make most warnings fatal

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	strictures-2.000005
CATEGORIES =	devel
REVISION =	0

CPAN_AUTHOR =	ETHER

# Perl
PERMIT_PACKAGE =	Yes

# These allow additional strictures to be used, should we ever
# get them ported.
#RUN_DEPENDS +=	CPAN/p5-bareword-filehandles \
#		CPAN/p5-multidimensional \

.include <bsd.port.mk>
