# $OpenBSD: Makefile,v 1.1.1.1 2008/09/06 10:33:59 simon Exp $

COMMENT =	simple blog code for valid (X)HTML

MODULES =	cpan
DISTNAME =	HTML-SBC-0.15
CATEGORIES =	www

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

# actually REGRESS_DEPENDS but Module::Install screws up
BUILD_DEPENDS =	::devel/p5-Test-Exception \
		::devel/p5-Test-Simple

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
