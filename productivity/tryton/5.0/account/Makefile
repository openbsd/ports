# $OpenBSD: Makefile,v 1.9 2019/07/02 10:21:26 semarie Exp $

MODPY_EGG_VERSION =	5.0.8
TRYTON_MODULE =		account

TRYTON_DEPENDS +=	party \
			currency \
			company

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR} \
			devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
