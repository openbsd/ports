# $OpenBSD: Makefile,v 1.4 2010/11/15 19:46:06 espie Exp $

COMMENT =	a role for classes that can be thrown

MODULES =	cpan
DISTNAME =	Throwable-0.102080
CATEGORIES =	devel
CPAN_AUTHOR =	RJBS
USE_GROFF =	Yes

MAINTAINER =	Stephan A. Rickauer <stephan@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =		p5-Moose->=0.87:devel/p5-Moose \
			p5-Devel-StackTrace->=1.21:devel/p5-Devel-StackTrace
BUILD_DEPENDS = 	${RUN_DEPENDS}

TEST_POD =		Yes

.include <bsd.port.mk>
