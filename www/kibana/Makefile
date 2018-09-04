# $OpenBSD: Makefile,v 1.22 2018/09/04 12:46:25 espie Exp $

COMMENT=	browser based analytics/search interface to ElasticSearch

V =		6.2.4
PKGNAME =	kibana-${V}
DISTNAME =	${PKGNAME}-darwin-x86_64
REVISION =	0

CATEGORIES =	www

HOMEPAGE =	https://www.elastic.co/products/kibana

MAINTAINER =	Pavel Korovin <p@tristero.se>

# Apache
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://artifacts.elastic.co/downloads/kibana/

RUN_DEPENDS =	lang/node

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/kibana
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/kibana/
	${INSTALL_DATA} ${WRKDIST}/*.txt ${PREFIX}/share/doc/kibana/
	${INSTALL_DATA} ${WRKDIST}/config/kibana.yml \
		${PREFIX}/share/examples/kibana/
	rm -r ${WRKDIST}/*.txt ${WRKDIST}/{data,plugins} \
		${WRKDIST}/{bin/*.orig,config,node}
	find ${WRKDIST} -name '*.un~' -print0 | xargs -0 rm
	cd ${WRKDIST} && cp -R * ${PREFIX}/kibana/
	${INSTALL_DATA_DIR} ${PREFIX}/kibana/config
	cd ${PREFIX}/kibana && \
		ln -s ${LOCALSTATEDIR}/kibana/data data && \
		ln -s ${LOCALSTATEDIR}/kibana/plugins plugins
	cd ${PREFIX}/kibana/config && \
		ln -s ${SYSCONFDIR}/kibana/kibana.yml

.include <bsd.port.mk>
