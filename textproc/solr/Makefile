# $OpenBSD: Makefile,v 1.37 2021/12/15 12:17:11 sthen Exp $

COMMENT=	full-text search engine based on Lucene

V=		8.11.0
DISTNAME=	solr-$V
REVISION=	0
EXTRACT_SUFX=	.tgz

PKG_ARCH=	*

CATEGORIES=	textproc

HOMEPAGE=	https://lucene.apache.org/solr/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_APACHE:=lucene/solr/$V/}

MASTER_SITES0=	${MASTER_SITE_APACHE:=logging/log4j/2.15.0/}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		apache-log4j-2.15.0-bin.tar.gz:0

MODULES=	java
MODJAVA_VER=	1.8+
SUBST_VARS=	V
RUN_DEPENDS=	shells/bash \
		java/javaPathHelper

NO_TEST=	Yes
NO_BUILD=	Yes

do-configure:
	@echo "** Overriding vulnerable log4j versions"; echo
.for l4j_comp in log4j-1.2-api log4j-api log4j-core log4j-layout-template-json log4j-slf4j-impl log4j-web
	@ln -fs ${l4j_comp}-2.15.0.jar ${WRKSRC}/server/lib/ext/${l4j_comp}-*jar
	-${INSTALL_DATA} ${WRKDIR}/apache-log4j-*/${l4j_comp}-2.15.0.jar \
	    ${WRKSRC}/server/lib/ext
	@cd ${WRKSRC}; ls -l ${WRKSRC}/server/lib/ext/${l4j_comp}*
.endfor

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
