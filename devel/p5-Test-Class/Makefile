# $OpenBSD: Makefile,v 1.19 2020/07/03 21:45:12 sthen Exp $

COMMENT =	easily create test classes in an xUnit style

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Test-Class-0.50
CATEGORIES =	devel
FIX_EXTRACT_PERMISSIONS=Yes
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Test-Exception \
		devel/p5-MRO-Compat \
		devel/p5-Module-Runtime \
		devel/p5-Try-Tiny
            
.include <bsd.port.mk>
