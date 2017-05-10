# $OpenBSD: Makefile,v 1.15 2017/05/10 19:40:09 benoit Exp $

COMMENT = 	perl extension for emulating troublesome interfaces

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-MockObject-1.20161202
CATEGORIES =	devel

# Artistic
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-Universal-isa \
			devel/p5-Universal-can

TEST_DEPENDS =		devel/p5-Test-Exception \
			devel/p5-Test-Warn \
			www/p5-CGI

.include <bsd.port.mk>
