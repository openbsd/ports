# $OpenBSD: Makefile,v 1.30 2016/05/21 10:13:16 jasper Exp $

COMMENT=		distributed RESTful search and analytics

V=			2.3.3
DISTNAME=		elasticsearch-$V
CATEGORIES=		textproc

HOMEPAGE=		https://www.elastic.co/products/elasticsearch

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://download.elasticsearch.org/elasticsearch/elasticsearch/

MODULES=		java
MODJAVA_VER=		1.8+
MODJAVA_JRERUN=		Yes

RUN_DEPENDS=		java/javaPathHelper

NO_BUILD=		Yes
NO_TEST=		Yes

ES_BASE=		${PREFIX}/elasticsearch/
SUBST_VARS+=		VARBASE V

do-install:
	${SUBST_CMD} ${WRKSRC}/config/elasticsearch.yml \
			${WRKSRC}/bin/plugin
	${INSTALL_DATA_DIR} ${ES_BASE}/{bin,lib,modules}/ \
		${PREFIX}/share/{doc,examples}/elasticsearch/
.for b in elasticsearch plugin
	${INSTALL_SCRIPT} ${WRKSRC}/bin/$b ${ES_BASE}/bin/
.endfor
	${INSTALL_DATA} ${WRKSRC}/lib/*.jar ${ES_BASE}/lib/
.for c in ${WRKSRC}/config/*.yml ${WRKSRC}/bin/elasticsearch.in.sh
	${INSTALL_DATA} ${WRKSRC}/$c ${PREFIX}/share/examples/elasticsearch/
.endfor
	cp -R ${WRKSRC}/modules ${ES_BASE}
	${INSTALL_DATA} ${WRKSRC}/README.textile ${PREFIX}/share/doc/elasticsearch/

.include <bsd.port.mk>
