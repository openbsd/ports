# $OpenBSD: Makefile,v 1.1.1.1 2008/09/09 21:14:27 simon Exp $

COMMENT =	check the presence of tabs in your project

MODULES =	cpan
DISTNAME =	Test-NoTabs-0.3
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =		::devel/p5-Test-Group

CONFIGURE_STYLE =	modbuild

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
