# $OpenBSD: Makefile,v 1.6 2020/05/14 17:25:15 semarie Exp $

MODPY_EGG_VERSION =	5.0.4
TRYTON_MODULE =		account_payment

TRYTON_DEPENDS +=	account \
			company \
			currency \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_invoice

.include <bsd.port.mk>
