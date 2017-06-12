# $OpenBSD: Makefile,v 1.6 2017/06/12 10:57:57 ajacoutot Exp $

COMMENT =		turn every die/warn into carp verbose messages

DISTNAME =		Carp-Always-0.13
CATEGORIES =		devel
REVISION =		0

MODULES =		cpan
PKG_ARCH =		*

# perl
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV =		TEST_POD=Yes

pre-configure:
	rm ${WRKSRC}/lib/Carp/Always.pm.orig

.include <bsd.port.mk>
