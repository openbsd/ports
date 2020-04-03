# $OpenBSD: Makefile,v 1.42 2020/04/03 10:12:32 pvk Exp $

COMMENT=	browser based analytics/search interface to ElasticSearch

V =		7.6.2
PKGNAME =	kibana-${V}
DISTNAME =	kibana-oss-${V}-darwin-x86_64

CATEGORIES =	www

HOMEPAGE =	https://www.elastic.co/products/kibana

MAINTAINER =	Pavel Korovin <pvk@openbsd.org>

# Apache
PERMIT_PACKAGE =	Yes

MASTER_SITES =	http://artifacts.elastic.co/downloads/kibana/

RUN_DEPENDS =	lang/node

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

SUBST_TARGETS =	${WRKSRC}/bin/*
WRKDIST =	${WRKDIR}/kibana-${V}-darwin-x86_64

do-install:
	${SUBST_CMD} ${SUBST_TARGETS}
	${INSTALL_DATA_DIR} ${PREFIX}/kibana
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/kibana/
	${INSTALL_DATA} ${WRKDIST}/*.txt ${PREFIX}/share/doc/kibana/
	${INSTALL_DATA} ${WRKDIST}/config/kibana.yml \
		${PREFIX}/share/examples/kibana/
	rm -r ${WRKDIST}/*.{orig,txt} ${WRKDIST}/{data,plugins} \
		${WRKDIST}/{bin/*.{orig,beforesubst},config,node}
	find ${WRKDIST} \( -name \*~ -o -name \.*~ \) -delete
	cd ${WRKDIST} && cp -R * ${PREFIX}/kibana/
	${INSTALL_DATA_DIR} ${PREFIX}/kibana/config
	cd ${PREFIX}/kibana && \
		ln -s ${LOCALSTATEDIR}/kibana/data data && \
		ln -s ${LOCALSTATEDIR}/kibana/plugins plugins
	cd ${PREFIX}/kibana/config && \
		ln -s ${SYSCONFDIR}/kibana/kibana.yml

.include <bsd.port.mk>
