# $OpenBSD: Makefile,v 1.4 2015/05/18 11:29:37 jasper Exp $

COMMENT =		turn every die/warn into carp verbose messages

DISTNAME =		Carp-Always-0.13
CATEGORIES =		devel

MODULES =		cpan

# perl
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV =		TEST_POD=Yes

pre-configure:
	rm ${WRKSRC}/lib/Carp/Always.pm.orig

.include <bsd.port.mk>
