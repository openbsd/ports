# $OpenBSD: Makefile,v 1.27 2010/04/14 12:16:29 kili Exp $

COMMENT=	LaTeX to HTML converter

DISTNAME=	latex2html-2008
CATEGORIES=	textproc www

HOMEPAGE=	http://www.latex2html.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=support/latex2html/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:netpbm-*:graphics/netpbm \
		:ghostscript-*:print/ghostscript/gnu \
		::print/texlive/base

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--shlibdir=${PREFIX}/share/latex2html \
		--with-texpath=${PREFIX}/share/texmf-local/tex/latex/html

PKG_ARCH=	*

REGRESS_TARGET=	test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/latex2hmtl
	cp -R ${WRKSRC}/docs/* ${PREFIX}/share/doc/latex2hmtl
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/latex2html
	cp -R ${WRKSRC}/example/* ${PREFIX}/share/examples/latex2html

.include <bsd.port.mk>

