# $OpenBSD: Makefile,v 1.9 2013/10/11 23:49:23 naddy Exp $

COMMENT =	a role for classes that can be thrown

MODULES =	cpan
DISTNAME =	Throwable-0.102080
REVISION =	1
CATEGORIES =	devel
CPAN_AUTHOR =	RJBS

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-Moose>=0.87 \
			devel/p5-Devel-StackTrace>=1.21
BUILD_DEPENDS = 	${RUN_DEPENDS}

TEST_POD =		Yes

.include <bsd.port.mk>
