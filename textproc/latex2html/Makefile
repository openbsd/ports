# $OpenBSD: Makefile,v 1.24 2006/01/12 12:39:06 jsg Exp $

COMMENT=	"LaTeX to HTML converter"

VERSION=	2002-2-1
DISTNAME=	latex2html-${VERSION}
PKGNAME=	latex2html-${VERSION:S/-/./g}p0
CATEGORIES=	textproc www

HOMEPAGE=	http://www.latex2html.org/

# mixed licenses
PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=support/latex2html/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:netpbm-*:graphics/netpbm \
		:ghostscript-*:print/ghostscript/gnu \
		:teTeX_base-*:print/teTeX/base

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

