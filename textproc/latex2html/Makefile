# $OpenBSD: Makefile,v 1.36 2019/07/12 20:50:00 sthen Exp $

COMMENT=	LaTeX to HTML converter

DISTNAME=	latex2html-2015
REVISION=	2
CATEGORIES=	textproc www

HOMEPAGE=	http://www.latex2html.org/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=support/latex2html/}

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/latex2hmtl
	cp -R ${WRKSRC}/docs/* ${PREFIX}/share/doc/latex2hmtl
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/latex2html
	cp -R ${WRKSRC}/example/* ${PREFIX}/share/examples/latex2html

.include <bsd.port.mk>
