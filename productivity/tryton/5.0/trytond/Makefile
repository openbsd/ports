# $OpenBSD: Makefile,v 1.25 2020/05/14 17:25:15 semarie Exp $

COMMENT =		3-tiers general purpose business application framework

MODPY_EGG_VERSION =	5.0.21
DISTNAME =		trytond-${MODPY_EGG_VERSION}

TRYTON_PY =		Yes

SUBST_VARS +=		TRYTON_VERSION

RUN_DEPENDS +=		databases/py-psycopg2${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			print/py-relatorio${MODPY_FLAVOR} \
			www/py-genshi${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR} \
			textproc/py-polib${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR} \
			www/py-werkzeug${MODPY_FLAVOR} \
			devel/py-wrapt${MODPY_FLAVOR} \
			security/py-passlib${MODPY_FLAVOR} \
			converters/py-html2text${MODPY_FLAVOR} \
			security/py-bcrypt${MODPY_FLAVOR}

#RUN_DEPENDS +=		graphics/pydot	# optional, port is py2 only
#RUN_DEPENDS +=		levenshtein	# optional, not ported

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/trytond
	${SUBST_CMD} -m 0444 -c ${FILESDIR}/server.conf \
		${PREFIX}/share/examples/trytond/server.conf
	${SUBST_CMD} -m 0444 -c ${FILESDIR}/logging.conf \
		${PREFIX}/share/examples/trytond/logging.conf
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${DISTNAME}
	${INSTALL_DATA} ${WRKSRC}/{README,COPYRIGHT,CHANGELOG} \
		${PREFIX}/share/doc/${DISTNAME}

.include <bsd.port.mk>
