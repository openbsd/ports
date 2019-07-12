# $OpenBSD: Makefile,v 1.7 2019/07/12 20:44:45 sthen Exp $

COMMENT =		turn every die/warn into carp verbose messages

DISTNAME =		Carp-Always-0.13
CATEGORIES =		devel
REVISION =		0

MODULES =		cpan
PKG_ARCH =		*

# perl
PERMIT_PACKAGE =	Yes

MAKE_ENV =		TEST_POD=Yes

pre-configure:
	rm ${WRKSRC}/lib/Carp/Always.pm.orig

.include <bsd.port.mk>
