# $OpenBSD: Makefile,v 1.2 2019/12/11 07:20:52 semarie Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		account_payment

TRYTON_DEPENDS +=	account \
			company \
			currency \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_invoice

.include <bsd.port.mk>
