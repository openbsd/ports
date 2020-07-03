# $OpenBSD: Makefile,v 1.6 2020/07/03 21:12:30 sthen Exp $

MODPY_EGG_VERSION =	5.2.4
TRYTON_MODULE =		account_payment
REVISION =		0

TRYTON_DEPENDS +=	account \
			company \
			currency \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_invoice

.include <bsd.port.mk>
