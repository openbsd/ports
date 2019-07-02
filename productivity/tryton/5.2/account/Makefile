# $OpenBSD: Makefile,v 1.3 2019/07/02 10:21:27 semarie Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		account

TRYTON_DEPENDS +=	party \
			currency \
			company

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR} \
			devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
