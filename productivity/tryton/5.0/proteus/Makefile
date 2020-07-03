# $OpenBSD: Makefile,v 1.8 2020/07/03 21:12:28 sthen Exp $

COMMENT =		library to access Tryton models like a client

MODPY_EGG_VERSION =	5.0.7
DISTNAME =		proteus-${MODPY_EGG_VERSION}
REVISION =		0

TRYTON_PY =		Yes

RUN_DEPENDS +=		productivity/tryton/${TRYTON_VERSION}/trytond \
			devel/py-dateutil${MODPY_FLAVOR}

TEST_DEPENDS +=		productivity/tryton/${TRYTON_VERSION}/party

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${DISTNAME}
	${INSTALL_DATA} ${WRKSRC}/{README,COPYRIGHT,CHANGELOG} \
		${PREFIX}/share/doc/${DISTNAME}

.include <bsd.port.mk>
