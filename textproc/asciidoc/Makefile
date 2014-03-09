# $OpenBSD: Makefile,v 1.21 2014/03/09 19:48:59 jasper Exp $

COMMENT=	text document format for writing documents and man pages

DISTNAME=	asciidoc-8.6.8
CATEGORIES=	textproc

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://www.methods.co.nz/asciidoc/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=asciidoc/}

MODULES=	lang/python
RUN_DEPENDS=	textproc/docbook-xsl

MODPY_ADJ_FILES=a2x.py \
		asciidoc.py \
		asciidocapi.py \
		filters/{code,graphviz,latex,music}/*.py

PKG_ARCH=	*
USE_GMAKE=	Yes
NO_TEST=	Yes

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

CONFIGURE_STYLE=gnu

post-configure:
	@perl -pi -e 's,/etc,${SYSCONFDIR},g' ${WRKSRC}/asciidoc.py

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_SITEPKG}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/asciidoc/vim/{syntax,ftdetect}
	${INSTALL_DATA} ${WRKSRC}/asciidocapi.py \
		${WRKINST}${MODPY_SITEPKG}/asciidocapi.py
	${INSTALL_DATA} ${WRKSRC}/vim/syntax/asciidoc.vim \
		${PREFIX}/share/examples/asciidoc/vim/syntax/
	${INSTALL_DATA} ${WRKSRC}/vim/ftdetect/asciidoc_filetype.vim \
		${PREFIX}/share/examples/asciidoc/vim/ftdetect/

.include <bsd.port.mk>
