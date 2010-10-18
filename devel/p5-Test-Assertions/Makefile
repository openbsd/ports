# $OpenBSD: Makefile,v 1.2 2010/10/18 17:48:07 espie Exp $

COMMENT =	set of building blocks for both unit and runtime testing

MODULES =	cpan
DISTNAME =	Test-Assertions-1.054
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::devel/p5-Log-Trace

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
