# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:22 espie Exp $

COMMENT =	check the presence of tabs in your project

MODULES =	cpan
DISTNAME =	Test-NoTabs-0.3
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =		devel/p5-Test-Group

CONFIGURE_STYLE =	modbuild

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
