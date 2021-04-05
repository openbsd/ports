# $OpenBSD: Makefile,v 1.17 2021/04/05 15:58:14 semarie Exp $

MODPY_EGG_VERSION =	5.0.16
TRYTON_MODULE =		account

TRYTON_DEPENDS +=	party \
			currency \
			company

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR} \
			devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
