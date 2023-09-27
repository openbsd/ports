COMMENT=	full-text search engine based on Lucene

V=		9.2.0
DISTNAME=	solr-$V
EXTRACT_SUFX=	.tgz
REVISION=	0

PKG_ARCH=	*

CATEGORIES=	textproc

HOMEPAGE=	https://lucene.apache.org/solr/

# Apache 2.0
PERMIT_PACKAGE=	Yes

SITES=		${SITE_APACHE:=solr/solr/$V/}

MODULES=	java
MODJAVA_VER=	11+
SUBST_VARS=	V
RUN_DEPENDS=	shells/bash \
		java/javaPathHelper

NO_TEST=	Yes
NO_BUILD=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/solr
	cd ${WRKSRC}; pax -rw * ${PREFIX}/share/solr
	chown -R ${BINOWN}:${BINGRP} $(PREFIX)/share/solr
	${INSTALL_SCRIPT} ${WRKSRC}/bin/solr ${PREFIX}/share/solr/bin/
	ln -s ../share/solr/bin/solr ${PREFIX}/bin
	cd ${PREFIX}/share/solr/bin; \
	    ${SUBST_CMD} solr solr.in.sh; \
	    rm *${PATCHORIG} *.beforesubst

.include <bsd.port.mk>
