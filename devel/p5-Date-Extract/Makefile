# $OpenBSD: Makefile,v 1.1.1.1 2015/10/14 17:36:08 robert Exp $

COMMENT =	extract probable dates from strings

V =		0.05

MODULES =	cpan
DISTNAME =	Date-Extract-${V}
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

TEST_DEPENDS =	devel/p5-Test-MockTime

RUN_DEPENDS =	devel/p5-DateTime-Format-Natural \
		devel/p5-Class-Data-Inheritable
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
