# $OpenBSD: Makefile,v 1.5 2019/07/12 20:44:50 sthen Exp $

COMMENT =	extract probable dates from strings

V =		0.06

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Date-Extract-${V}
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

TEST_DEPENDS =	devel/p5-Test-MockTime

RUN_DEPENDS =	devel/p5-DateTime-Format-Natural \
		devel/p5-Class-Data-Inheritable
BUILD_DEPENDS =	${RUN_DEPENDS} \
		${TEST_DEPENDS}

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
