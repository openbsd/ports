# $OpenBSD: Makefile,v 1.4 2017/04/06 09:55:01 benoit Exp $

COMMENT =	extract probable dates from strings

V =		0.06

MODULES =	cpan
PKG_ARCH =	*
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
