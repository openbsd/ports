# $OpenBSD: Makefile,v 1.3 2014/11/25 07:23:48 benoit Exp $

COMMENT =		turn every die/warn into carp verbose messages

DISTNAME =		Carp-Always-0.13
CATEGORIES =		devel

MODULES =		cpan

# perl
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV =		TEST_POD=Yes

post-install:
			rm -f ${PREFIX}/${P5SITE}/Carp/Always.pm.orig

.include <bsd.port.mk>
