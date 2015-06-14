# $OpenBSD: Makefile,v 1.12 2015/06/14 09:16:59 jasper Exp $

COMMENT=		distributed RESTful search and analytics

DISTNAME=		elasticsearch-1.6.0
CATEGORIES=		textproc

HOMEPAGE=		https://www.elastic.co/products/elasticsearch

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://distfiles.nl/ \
			https://download.elasticsearch.org/elasticsearch/elasticsearch/

MODULES=		java
MODJAVA_VER=		1.7+
MODJAVA_JRERUN=		Yes

RUN_DEPENDS=		java/javaPathHelper

NO_BUILD=		Yes
NO_TEST=		Yes

ES_BASE=		${PREFIX}/elasticsearch/
SUBST_VARS+=		VARBASE

do-install:
	${SUBST_CMD} ${WRKSRC}/config/elasticsearch.yml \
			${WRKSRC}/bin/plugin
	${INSTALL_DATA_DIR} ${ES_BASE}/{bin,lib}/ \
		${PREFIX}/share/{doc,examples}/elasticsearch/
.for b in elasticsearch plugin
	${INSTALL_SCRIPT} ${WRKSRC}/bin/$b ${ES_BASE}/bin/
.endfor
	${INSTALL_DATA} ${WRKSRC}/lib/*.jar ${ES_BASE}/lib/
.for c in ${WRKSRC}/config/*.yml ${WRKSRC}/bin/elasticsearch.in.sh
	${INSTALL_DATA} ${WRKSRC}/$c ${PREFIX}/share/examples/elasticsearch/
.endfor
	${INSTALL_DATA} ${WRKSRC}/README.textile ${PREFIX}/share/doc/elasticsearch/

.include <bsd.port.mk>
