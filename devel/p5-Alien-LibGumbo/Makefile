# $OpenBSD: Makefile,v 1.1.1.1 2021/01/18 13:28:33 robert Exp $

COMMENT =	building, finding and using the libgumbo library

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Alien-LibGumbo-0.05

CATEGORIES =	devel

# perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	devel/p5-Alien-Base-ModuleBuild \
		devel/p5-Path-Class \
		www/gumbo

BUILD_DEPENDS =	${RUN_DEPENDS}


.include <bsd.port.mk>
