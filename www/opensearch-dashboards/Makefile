COMMENT =	visualization tool for data in OpenSearch

V =		2.16.0
DISTNAME =	opensearch-dashboards-$V-linux-x64
PKGNAME =	opensearch-dashboards-$V

CATEGORIES =	www

HOMEPAGE =	https://www.opensearch.org/

MAINTAINER =	Omar Polo <op@openbsd.org>,\
		Pavel Korovin <pvk@openbsd.org>

SITES =		https://artifacts.opensearch.org/releases/bundle/opensearch-dashboards/$V/

FIX_EXTRACT_PERMISSIONS = Yes

# Apache2
PERMIT_PACKAGE = Yes

RUN_DEPENDS =	lang/node

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

WRKDIST =	${WRKDIR}/${PKGNAME}

do-install:
	${SUBST_CMD} ${WRKSRC}/bin/*
	${INSTALL_DATA_DIR} ${PREFIX}/opensearch-dashboards
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/opensearch-dashboards
	${INSTALL_DATA} ${WRKDIST}/*.txt ${PREFIX}/share/doc/opensearch-dashboards
	${INSTALL_DATA} ${WRKDIST}/config/opensearch_dashboards.yml \
		${PREFIX}/share/examples/opensearch-dashboards
	rm -r ${WRKDIST}/src/setup_node_env/*${PATCHORIG} \
		${WRKDIST}/data ${WRKDIST}/{bin/*{${PATCHORIG},.beforesubst},config,node}
	find ${WRKDIST} \( -name '.*' -a ! -name \.cache \) -exec rm -rf {} +
	find ${WRKDIST} -name \*~ -delete
	cd ${WRKDIST} && cp -R * ${PREFIX}/opensearch-dashboards/
	${INSTALL_DATA_DIR} ${PREFIX}/opensearch-dashboards/config
	cd ${PREFIX}/opensearch-dashboards && \
		ln -s ${LOCALSTATEDIR}/opensearch-dashboards/data data
	cd ${PREFIX}/opensearch-dashboards/config && \
		ln -s ${SYSCONFDIR}/opensearch-dashboards/opensearch_dashboards.yml

.include <bsd.port.mk>
