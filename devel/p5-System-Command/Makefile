# $OpenBSD: Makefile,v 1.5 2016/03/20 19:56:35 naddy Exp $

COMMENT = 	object for running system commands

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	System-Command-1.07
CATEGORIES =	devel

REVISION =	0

# perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	modbuild

MAKE_ENV +=		TEST_POD=yes

TEST_DEPENDS =	devel/p5-Test-Output

.include <bsd.port.mk>
