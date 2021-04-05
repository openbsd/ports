# $OpenBSD: Makefile,v 1.8 2021/04/05 15:58:14 semarie Exp $

MODPY_EGG_VERSION =	5.0.6
TRYTON_MODULE =		account_payment

TRYTON_DEPENDS +=	account \
			company \
			currency \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_invoice

.include <bsd.port.mk>
