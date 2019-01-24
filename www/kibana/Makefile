# $OpenBSD: Makefile,v 1.28 2019/01/24 06:07:04 pvk Exp $

COMMENT=	browser based analytics/search interface to ElasticSearch

V =		6.5.4
PKGNAME =	kibana-${V}
DISTNAME =	kibana-oss-${V}-darwin-x86_64

CATEGORIES =	www

HOMEPAGE =	https://www.elastic.co/products/kibana

MAINTAINER =	Pavel Korovin <p@tristero.se>

# Apache
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://artifacts.elastic.co/downloads/kibana/

RUN_DEPENDS =	lang/node=10.15.0

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

WRKDIST =	${WRKDIR}/kibana-${V}-darwin-x86_64

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/kibana
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/kibana/
	${INSTALL_DATA} ${WRKDIST}/*.txt ${PREFIX}/share/doc/kibana/
	${INSTALL_DATA} ${WRKDIST}/config/kibana.yml \
		${PREFIX}/share/examples/kibana/
	rm -r ${WRKDIST}/*.{orig,txt} ${WRKDIST}/{data,plugins} \
		${WRKDIST}/{bin/*.orig,config,node}
	find ${WRKDIST} \( -name \*~ -or -name \.*~ \) -print0 | xargs -0 rm
	cd ${WRKDIST} && cp -R * ${PREFIX}/kibana/
	${INSTALL_DATA_DIR} ${PREFIX}/kibana/config
	cd ${PREFIX}/kibana && \
		ln -s ${LOCALSTATEDIR}/kibana/data data && \
		ln -s ${LOCALSTATEDIR}/kibana/plugins plugins
	cd ${PREFIX}/kibana/config && \
		ln -s ${SYSCONFDIR}/kibana/kibana.yml

.include <bsd.port.mk>
