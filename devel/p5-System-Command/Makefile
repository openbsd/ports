# $OpenBSD: Makefile,v 1.6 2019/07/12 20:45:07 sthen Exp $

COMMENT = 	object for running system commands

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	System-Command-1.07
CATEGORIES =	devel

REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	modbuild

MAKE_ENV +=		TEST_POD=yes

TEST_DEPENDS =	devel/p5-Test-Output

.include <bsd.port.mk>
