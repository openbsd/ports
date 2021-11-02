# $OpenBSD: Makefile,v 1.5 2021/11/02 00:02:05 sthen Exp $

COMMENT =		library to access Tryton models like a client

MODPY_EGG_VERSION =	5.2.4
DISTNAME =		proteus-${MODPY_EGG_VERSION}
REVISION =		1

TRYTON_PY =		Yes

RUN_DEPENDS +=		productivity/tryton/${TRYTON_VERSION}/trytond \
			devel/py-dateutil${MODPY_FLAVOR}

TEST_DEPENDS +=		productivity/tryton/${TRYTON_VERSION}/party

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${DISTNAME}
	${INSTALL_DATA} ${WRKSRC}/{README.rst,COPYRIGHT,CHANGELOG} \
		${PREFIX}/share/doc/${DISTNAME}

.include <bsd.port.mk>
