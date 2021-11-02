# $OpenBSD: Makefile,v 1.29 2021/11/02 00:02:35 sthen Exp $

COMMENT=	text document format for writing documents and man pages

V=		9.0.4
DISTNAME=	asciidoc-${V}
REVISION=	0

CATEGORIES=	textproc

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	https://github.com/asciidoc/asciidoc-py3

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/asciidoc/asciidoc-py3/releases/download/${V}/

MODULES=	lang/python

BUILD_DEPENDS=	textproc/docbook-xsl

RUN_DEPENDS=	textproc/docbook-xsl \
		w3m-*|lynx-*:www/w3m

PKG_ARCH=	*
USE_GMAKE=	Yes
NO_TEST=	Yes

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

CONFIGURE_STYLE=gnu

INSTALL_TARGET=	install docs

pre-configure:
	sed -i 's,/etc,${SYSCONFDIR},g' ${WRKSRC}/doc/testasciidoc.1.txt

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_SITEPKG} \
		${PREFIX}/share/doc/asciidoc
	${INSTALL_DATA} ${WRKSRC}/asciidocapi.py \
		${WRKINST}${MODPY_SITEPKG}/asciidocapi.py
.for d in dblatex docbook-xsl images javascripts stylesheets
	rm -r ${PREFIX}/share/doc/asciidoc/$d
	ln -s ${SYSCONFDIR}/asciidoc/$d ${PREFIX}/share/doc/asciidoc/$d
.endfor

.include <bsd.port.mk>
