# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:23 espie Exp $

COMMENT =	parse vFile formatted files into data structures

DISTNAME =	Text-vFile-asData-0.07

CATEGORIES =	devel textproc

MODULES =	cpan

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-Class-Accessor-Chained

MAKE_ENV +=		TEST_POD=1

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
