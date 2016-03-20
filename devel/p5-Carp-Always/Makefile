# $OpenBSD: Makefile,v 1.5 2016/03/20 19:56:14 naddy Exp $

COMMENT =		turn every die/warn into carp verbose messages

DISTNAME =		Carp-Always-0.13
CATEGORIES =		devel

MODULES =		cpan
PKG_ARCH =		*

# perl
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV =		TEST_POD=Yes

pre-configure:
	rm ${WRKSRC}/lib/Carp/Always.pm.orig

.include <bsd.port.mk>
