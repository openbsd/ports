# $OpenBSD: Makefile,v 1.3 2015/07/19 21:09:57 afresh1 Exp $

COMMENT =	turn on strict and make most warnings fatal

MODULES =	cpan
DISTNAME =	strictures-2.000001
CATEGORIES =	devel

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

CPAN_AUTHOR =	HAARG

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS = 		devel/p5-indirect

# These allow additional strictures to be used, should we ever
# get them ported.
#RUN_DEPENDS +=	CPAN/p5-bareword-filehandles \
#		CPAN/p5-multidimensional \

.include <bsd.port.mk>
