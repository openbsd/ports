# $OpenBSD: Makefile,v 1.5 2019/04/28 20:51:50 sthen Exp $

COMMENT =		library to access Tryton models like a client

MODPY_EGG_VERSION =	5.0.3
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
