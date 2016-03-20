# $OpenBSD: Makefile,v 1.16 2016/03/20 19:56:36 naddy Exp $

COMMENT =	easily create test classes in an xUnit style

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-Class-0.50
CATEGORIES =	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Test-Exception \
		devel/p5-MRO-Compat \
		devel/p5-Module-Runtime \
		devel/p5-Try-Tiny
            
.include <bsd.port.mk>
