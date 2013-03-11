# $OpenBSD: Makefile,v 1.6 2013/03/11 11:44:45 espie Exp $

COMMENT =	simple blog code for valid (X)HTML

MODULES =	cpan
DISTNAME =	HTML-SBC-0.15
REVISION =	0
CATEGORIES =	www
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

# actually TEST_DEPENDS but Module::Install screws up
BUILD_DEPENDS =	devel/p5-Test-Exception

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
