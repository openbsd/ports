# $OpenBSD: Makefile,v 1.18 2017/08/06 18:07:50 jasper Exp $

COMMENT=	browser based analytics/search interface to ElasticSearch

V=		5.5.1
PKGNAME=	kibana-${V}
DISTNAME=	${PKGNAME}-darwin-x86_64

CATEGORIES=	www

HOMEPAGE=	https://www.elastic.co/products/kibana

MAINTAINER=	Pavel Korovin <p@tristero.se>

# Apache
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://artifacts.elastic.co/downloads/kibana/

RUN_DEPENDS=	lang/node

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/kibana
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/kibana
	${INSTALL_DATA} ${WRKDIST}/config/kibana.yml \
		${PREFIX}/share/examples/kibana/kibana.yml.sample
	rm -rf ${WRKDIST}/{data,plugins} ${WRKDIST}/{LICENSE,NOTICE,README}.txt \
		${WRKDIST}/bin/*.orig \
		${WRKDIST}/config ${WRKDIST}/node
	find ${WRKDIST} -name '*.un~' -print0 | xargs -0 rm
	cd ${WRKDIST} && cp -R * ${PREFIX}/kibana/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/kibana/config
	cd ${PREFIX}/kibana/config && ln -sf ${SYSCONFDIR}/kibana/kibana.yml

.include <bsd.port.mk>
