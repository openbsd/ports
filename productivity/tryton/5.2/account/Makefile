# $OpenBSD: Makefile,v 1.10 2020/07/03 21:12:29 sthen Exp $

MODPY_EGG_VERSION =	5.2.8
TRYTON_MODULE =		account
REVISION =		0

TRYTON_DEPENDS +=	party \
			currency \
			company

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR} \
			devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
