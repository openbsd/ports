# $OpenBSD: Makefile,v 1.26 2019/07/12 20:49:56 sthen Exp $

COMMENT=	text document format for writing documents and man pages

DISTNAME =	asciidoc-8.6.9
CATEGORIES=	textproc
REVISION=	1

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://www.methods.co.nz/asciidoc/

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=asciidoc/}

MODULES=	lang/python

RUN_DEPENDS=	textproc/docbook-xsl \
		www/lynx

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
	@sed -i 's,/etc,${SYSCONFDIR},g' ${WRKSRC}/asciidoc.py

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_SITEPKG}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/asciidoc/vim/syntax
	${INSTALL_DATA} ${WRKSRC}/asciidocapi.py \
		${WRKINST}${MODPY_SITEPKG}/asciidocapi.py
	${INSTALL_DATA} ${WRKSRC}/vim/syntax/asciidoc.vim \
		${PREFIX}/share/examples/asciidoc/vim/syntax/

.include <bsd.port.mk>
