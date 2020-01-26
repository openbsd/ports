# $OpenBSD: Makefile,v 1.7 2020/01/26 14:21:54 semarie Exp $

MODPY_EGG_VERSION =	5.2.6
TRYTON_MODULE =		account

TRYTON_DEPENDS +=	party \
			currency \
			company

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR} \
			devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
