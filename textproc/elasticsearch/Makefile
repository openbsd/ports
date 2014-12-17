# $OpenBSD: Makefile,v 1.2 2014/12/17 08:36:56 jasper Exp $

COMMENT=		distributed RESTful search and analytics

DISTNAME=		elasticsearch-1.4.1
REVISION=		0
CATEGORIES=		textproc

HOMEPAGE=		http://www.elasticsearch.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://download.elasticsearch.org/elasticsearch/elasticsearch/

MODULES=		java
MODJAVA_VER=		1.7+
MODJAVA_JRERUN=		Yes

RUN_DEPENDS=		java/javaPathHelper

NO_BUILD=		Yes
NO_TEST=		Yes

ES_BASE=		${PREFIX}/elasticsearch/
SUBST_VARS+=		VARBASE

do-install:
	${SUBST_CMD} ${WRKSRC}/config/elasticsearch.yml
	${INSTALL_DATA_DIR} ${ES_BASE}/{bin,lib}/ \
		${PREFIX}/share/{doc,examples}/elasticsearch/
	${INSTALL_SCRIPT} ${WRKSRC}/bin/elasticsearch ${ES_BASE}/bin/
	${INSTALL_SCRIPT} ${WRKSRC}/bin/plugin ${ES_BASE}/bin/elasticsearch-plugin
	${INSTALL_DATA} ${WRKSRC}/lib/*.jar ${ES_BASE}/lib/
.for c in ${WRKSRC}/config/*.yml ${WRKSRC}/bin/elasticsearch.in.sh
	${INSTALL_DATA} ${WRKSRC}/$c ${PREFIX}/share/examples/elasticsearch/
.endfor
	${INSTALL_DATA} ${WRKSRC}/README.textile ${PREFIX}/share/doc/elasticsearch/

.include <bsd.port.mk>
