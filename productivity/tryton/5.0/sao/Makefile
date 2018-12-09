# $OpenBSD: Makefile,v 1.2 2018/12/09 13:38:58 semarie Exp $

COMMENT =		tryton web client

VERSION =		5.0.1
DEPVERSION =		0
DISTNAME =		tryton-sao-${VERSION}

EXTRACT_SUFX =		.tgz
WRKDIST =		${WRKDIR}/package

MASTER_SITES0 =		http://kapouay.odns.fr/pub/tryton/
DISTFILES +=		tryton-sao-${VERSION}.tgz \
			sao-dependencies-${TRYTON_VERSION}-${DEPVERSION}.zip:0

BUILD_DEPENDS +=	lang/node \
			devel/git

RUN_DEPENDS +=		productivity/tryton/${TRYTON_VERSION}/trytond

SUBST_VARS +=		TRYTON_VERSION
PORTHOME =		${WRKDIR}/sao-dependencies-${TRYTON_VERSION}

NO_TEST =		Yes

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} npm install --production --offline
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ./node_modules/.bin/grunt

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/tryton-sao-${TRYTON_VERSION}
	cd ${WRKSRC} && tar cf - \
		bower_components \
		locale \
		dist \
		images \
		index.html \
	| tar xf - -C ${PREFIX}/share/tryton-sao-${TRYTON_VERSION}

	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tryton-sao-${TRYTON_VERSION}
	${INSTALL_DATA} ${FILESDIR}/custom.css ${FILESDIR}/custom.js \
		${PREFIX}/share/examples/tryton-sao-${TRYTON_VERSION}

	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tryton-sao-${TRYTON_VERSION}
	${INSTALL_DATA} ${WRKSRC}/{README,LICENSE,COPYRIGHT,CHANGELOG} \
		${PREFIX}/share/doc/tryton-sao-${TRYTON_VERSION}

.include <bsd.port.mk>
