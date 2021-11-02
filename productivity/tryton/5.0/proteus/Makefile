# $OpenBSD: Makefile,v 1.10 2021/11/02 00:02:00 sthen Exp $

COMMENT =		library to access Tryton models like a client

MODPY_EGG_VERSION =	5.0.8
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
