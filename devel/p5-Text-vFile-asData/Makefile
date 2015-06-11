# $OpenBSD: Makefile,v 1.7 2015/06/11 12:33:31 benoit Exp $

COMMENT =	parse vFile formatted files into data structures

DISTNAME =	Text-vFile-asData-0.08

CATEGORIES =	devel textproc

MODULES =	cpan

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-Class-Accessor-Chained

MAKE_ENV +=		TEST_POD=1

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
