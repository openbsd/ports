COMMENT=	LaTeX to HTML converter

GH_ACCOUNT =	latex2html
GH_PROJECT =	latex2html
GH_TAGNAME =	v2021

CATEGORIES=	textproc www

HOMEPAGE=	http://www.latex2html.org/

# GPLv2
PERMIT_PACKAGE=	Yes

PATCHORIG=	.pat.orig
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	graphics/netpbm \
		print/ghostscript/gnu \
		print/texlive/base

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--shlibdir=${PREFIX}/share/latex2html \
		--with-texpath=${PREFIX}/share/texmf-local/tex/latex/html
CONFIGURE_ENV=	PERL_USE_UNSAFE_INC=1
MAKE_ENV=	PERL_USE_UNSAFE_INC=1

PKG_ARCH=	*

TEST_TARGET=	test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/latex2html
	cp -R ${WRKSRC}/docs/* ${PREFIX}/share/doc/latex2html
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/latex2html
	cp -R ${WRKSRC}/example/* ${PREFIX}/share/examples/latex2html

.include <bsd.port.mk>
