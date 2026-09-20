COMMENT =	driver to format LaTeX documents

DISTNAME =	LaTeX-Driver-1.3.1
CPAN_AUTHOR =	EHUELS
CATEGORIES =	textproc

MODULES =	cpan
PKG_ARCH =	*

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Class-Accessor \
		devel/p5-Exception-Class \
		devel/p5-File-Slurp \
		devel/p5-File-pushd \
		devel/p5-Log-Any \
		devel/p5-Readonly \
		sysutils/p5-Capture-Tiny

TEST_DEPENDS =	devel/p5-Test-Exception \
		print/texlive/texmf,-full \
		sysutils/p5-Capture-Tiny

#CONFIGURE_ARGS = EXE_FILES="[script/latex2dvi, script/latex2pdf, script/latex2ps]"

.include <bsd.port.mk>
