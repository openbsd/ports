# $OpenBSD: Makefile,v 1.2 2021/01/19 08:07:03 robert Exp $

COMMENT =	building, finding and using the libgumbo library

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Alien-LibGumbo-0.05
REVISION =	0

CATEGORIES =	devel

# perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	devel/p5-Alien-Base-ModuleBuild \
		devel/p5-File-ShareDir \
		devel/p5-Path-Class \
		www/gumbo \
		www/p5-URI

BUILD_DEPENDS =	${RUN_DEPENDS}


.include <bsd.port.mk>
