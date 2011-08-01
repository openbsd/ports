# $OpenBSD: Makefile,v 1.7 2011/08/01 19:30:31 stephan Exp $

COMMENT =	a role for classes that can be thrown

MODULES =	cpan
DISTNAME =	Throwable-0.102080
REVISION =	1
CATEGORIES =	devel
CPAN_AUTHOR =	RJBS
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =		devel/p5-Moose>=0.87 \
			devel/p5-Devel-StackTrace>=1.21
BUILD_DEPENDS = 	${RUN_DEPENDS}

TEST_POD =		Yes

.include <bsd.port.mk>
