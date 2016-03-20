# $OpenBSD: Makefile,v 1.14 2016/03/20 19:56:37 naddy Exp $

COMMENT = 	perl extension for emulating troublesome interfaces

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-MockObject-1.20150527
CATEGORIES =	devel

# Artistic
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-Universal-isa \
			devel/p5-Universal-can

TEST_DEPENDS =		devel/p5-Test-Exception \
			devel/p5-Test-Warn

.include <bsd.port.mk>
