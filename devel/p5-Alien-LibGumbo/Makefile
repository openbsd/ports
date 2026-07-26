COMMENT =	building, finding and using the libgumbo library

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Alien-LibGumbo-0.06

CATEGORIES =	devel

# perl
PERMIT_PACKAGE =	Yes

CPAN_AUTHOR =		BPS

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	devel/p5-Alien-Base-ModuleBuild \
		devel/p5-File-ShareDir \
		devel/p5-Path-Class \
		www/gumbo \
		www/p5-URI

BUILD_DEPENDS =	${RUN_DEPENDS}


.include <bsd.port.mk>
