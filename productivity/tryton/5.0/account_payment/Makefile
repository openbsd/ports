# $OpenBSD: Makefile,v 1.9 2021/11/02 00:01:56 sthen Exp $

MODPY_EGG_VERSION =	5.0.6
TRYTON_MODULE =		account_payment
REVISION =		0

TRYTON_DEPENDS +=	account \
			company \
			currency \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_invoice

.include <bsd.port.mk>
