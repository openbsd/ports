# $OpenBSD: Makefile,v 1.4 2019/02/22 07:24:34 semarie Exp $

MODPY_EGG_VERSION =	5.0.4
TRYTON_MODULE =		account

TRYTON_DEPENDS +=	party \
			currency \
			company

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR} \
			devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
