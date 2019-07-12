# $OpenBSD: Makefile,v 1.12 2019/07/12 20:49:57 sthen Exp $

COMMENT=	modular DSSSL stylesheets for the DocBook DTD

V=		1.79
DISTNAME=	docbook-dsssl-${V}
CATEGORIES=	textproc print

HOMEPAGE=	http://docbook.sourceforge.net/

# BSD-like
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=docbook/}
DISTFILES=	docbook-dsssl-${V}${EXTRACT_SUFX}
DISTFILES+=	docbook-dsssl-doc-${V}${EXTRACT_SUFX}

SEPARATE_BUILD=	Yes
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

INST_DIR=	${PREFIX}/share/sgml/docbook/dsssl/modular
DOC_DIR=	${PREFIX}/share/doc/docbook-dsssl
INST_SUBDIRS=	. common lib print html bin dtds/olink dtds/imagelib \
		dtds/html dtds/decls dtds/dbdsssl olink contrib/subdoc \
		contrib/renumberinpart contrib/print contrib/imagemap \
		contrib/html images images/callouts frames
DOC_SUBDIRS=	doc doc/html doc/lib doc/print \
		docsrc docsrc/htmlpr docsrc/libref docsrc/printpr

do-install:
.for i in ${INST_SUBDIRS}
	${INSTALL_DATA_DIR} ${INST_DIR}/$i
	${INSTALL_DATA} `find ${WRKDIST}/$i -maxdepth 1 -type f` ${INST_DIR}/$i
.endfor

.for i in ${DOC_SUBDIRS}
	${INSTALL_DATA_DIR} ${DOC_DIR}/$i
	${INSTALL_DATA} `find ${WRKDIST}/$i -maxdepth 1 -type f` ${DOC_DIR}/$i
.endfor
.include <bsd.port.mk>
