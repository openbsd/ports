COMMENT =		tryton web client

VERSION =		5.0.26
DEPVERSION =		13
DISTNAME =		tryton-sao-${VERSION}
REVISION =		0

EXTRACT_SUFX =		.tgz
WRKDIST =		${WRKDIR}/package

# sao-dependencies is generated using https://github.com/semarie/sao-dependencies
SITES.boot =		http://kapouay.odns.fr/pub/tryton/
DISTFILES +=		tryton-sao-${VERSION}.tgz
DISTFILES.boot += 	sao-dependencies-${TRYTON_VERSION}-${DEPVERSION}.tar.gz

RUN_DEPENDS +=		productivity/tryton/${TRYTON_VERSION}/trytond

SUBST_VARS +=		TRYTON_VERSION

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/tryton-sao-${TRYTON_VERSION}
	cd ${WRKSRC} && tar cf - \
		locale \
		dist \
		images \
		index.html \
	| tar xf - -C ${PREFIX}/share/tryton-sao-${TRYTON_VERSION}
	cd ${WRKDIR}/sao-dependencies-${TRYTON_VERSION}-${DEPVERSION} && tar cf - bower_components \
	| tar xf - -C ${PREFIX}/share/tryton-sao-${TRYTON_VERSION}

	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tryton-sao-${TRYTON_VERSION}
	${INSTALL_DATA} ${FILESDIR}/custom.css ${FILESDIR}/custom.js \
		${PREFIX}/share/examples/tryton-sao-${TRYTON_VERSION}

	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tryton-sao-${TRYTON_VERSION}
	${INSTALL_DATA} ${WRKSRC}/{README,LICENSE,COPYRIGHT,CHANGELOG} \
		${PREFIX}/share/doc/tryton-sao-${TRYTON_VERSION}

.include <bsd.port.mk>
