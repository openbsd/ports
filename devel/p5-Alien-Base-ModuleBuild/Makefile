COMMENT = 	Module::Build subclass for building Alien:: modules

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Alien-Base-ModuleBuild-1.15

CATEGORIES =	devel

# perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	archivers/p5-Archive-Extract \
		devel/p5-Alien-Base \
		devel/p5-Shell-Config-Generate \
		devel/p5-Shell-Guess \
		textproc/p5-Sort-Versions

BUILD_DEPENDS =	${RUN_DEPENDS}

NO_TEST =	Yes

.include <bsd.port.mk>
