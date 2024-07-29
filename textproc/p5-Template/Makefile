COMMENT =	template processing system

VERSION =	3.102
DISTNAME =	Template-Toolkit-${VERSION}
PKGNAME =	p5-Template-${VERSION}

CATEGORIES =	textproc

HOMEPAGE =	http://www.template-toolkit.org/

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-AppConfig>=1.56
RUN_DEPENDS =		devel/p5-AppConfig>=1.56 \
			textproc/p5-Pod-POM
TEST_DEPENDS =		graphics/p5-Image-Info \
			graphics/p5-Image-Size

CONFIGURE_ARGS =	TT_DBI=n TT_LATEX=n TT_ACCEPT=y \
			TT_DOCS=n TT_EXAMPLES=n TT_EXTRAS=n \
			TT_QUIET=y TT_PREFIX=${PREFIX}/share/tt2

MODPERL_REGEN_PPPORT =	xs/ppport.h

.include <bsd.port.mk>
