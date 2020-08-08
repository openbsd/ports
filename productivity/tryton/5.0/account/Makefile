# $OpenBSD: Makefile,v 1.16 2020/08/08 04:40:56 semarie Exp $

MODPY_EGG_VERSION =	5.0.14
TRYTON_MODULE =		account

TRYTON_DEPENDS +=	party \
			currency \
			company

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR} \
			devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
