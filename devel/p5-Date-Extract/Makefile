# $OpenBSD: Makefile,v 1.6 2020/07/03 21:44:47 sthen Exp $

COMMENT =	extract probable dates from strings

V =		0.06

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Date-Extract-${V}
CATEGORIES =	devel
REVISION =	0

# Perl
PERMIT_PACKAGE =	Yes

TEST_DEPENDS =	devel/p5-Test-MockTime

RUN_DEPENDS =	devel/p5-DateTime-Format-Natural \
		devel/p5-Class-Data-Inheritable
BUILD_DEPENDS =	${RUN_DEPENDS} \
		${TEST_DEPENDS}

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
