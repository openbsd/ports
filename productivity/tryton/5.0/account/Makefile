# $OpenBSD: Makefile,v 1.15 2020/07/05 04:51:44 semarie Exp $

MODPY_EGG_VERSION =	5.0.13
TRYTON_MODULE =		account

TRYTON_DEPENDS +=	party \
			currency \
			company

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR} \
			devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
