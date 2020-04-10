# $OpenBSD: Makefile,v 1.5 2020/04/10 15:21:11 semarie Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		account_payment

TRYTON_DEPENDS +=	account \
			company \
			currency \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_invoice

.include <bsd.port.mk>
