# $OpenBSD: Makefile,v 1.10 2019/05/16 18:12:54 semarie Exp $

COMMENT =		tryton web client

VERSION =		5.0.8
DEPVERSION =		7
DISTNAME =		tryton-sao-${VERSION}

EXTRACT_SUFX =		.tgz
WRKDIST =		${WRKDIR}/package

MASTER_SITES0 =		http://kapouay.odns.fr/pub/tryton/
DISTFILES +=		tryton-sao-${VERSION}.tgz \
			sao-dependencies-${TRYTON_VERSION}-${DEPVERSION}.tar.gz:0

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
	cd ${WRKDIR}/sao-dependencies-${TRYTON_VERSION} && tar cf - bower_components \
	| tar xf - -C ${PREFIX}/share/tryton-sao-${TRYTON_VERSION}

	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tryton-sao-${TRYTON_VERSION}
	${INSTALL_DATA} ${FILESDIR}/custom.css ${FILESDIR}/custom.js \
		${PREFIX}/share/examples/tryton-sao-${TRYTON_VERSION}

	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tryton-sao-${TRYTON_VERSION}
	${INSTALL_DATA} ${WRKSRC}/{README,LICENSE,COPYRIGHT,CHANGELOG} \
		${PREFIX}/share/doc/tryton-sao-${TRYTON_VERSION}

.include <bsd.port.mk>
