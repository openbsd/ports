# $OpenBSD: Makefile,v 1.2 2015/10/15 08:58:17 nigel Exp $

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
BUILD_DEPENDS =	${RUN_DEPENDS} \
		${TEST_DEPENDS}

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
