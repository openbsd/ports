# $OpenBSD: Makefile,v 1.4 2014/05/01 06:59:28 benoit Exp $

COMMENT = 	object for running system commands

MODULES =	cpan
DISTNAME =	System-Command-1.07
CATEGORIES =	devel

REVISION =	0

# perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	modbuild

MAKE_ENV +=		TEST_POD=yes

TEST_DEPENDS =	devel/p5-Test-Output

.include <bsd.port.mk>
