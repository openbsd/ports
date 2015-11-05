# $OpenBSD: Makefile,v 1.8 2015/11/05 19:09:00 jca Exp $

COMMENT =	simple blog code for valid (X)HTML

MODULES =	cpan
DISTNAME =	HTML-SBC-0.15
REVISION =	1
CATEGORIES =	www

# Perl
PERMIT_PACKAGE_CDROM =		Yes

# actually TEST_DEPENDS but Module::Install screws up
BUILD_DEPENDS =	devel/p5-Test-Exception

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
