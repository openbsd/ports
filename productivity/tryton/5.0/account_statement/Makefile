# $OpenBSD: Makefile,v 1.9 2021/04/05 15:58:14 semarie Exp $

MODPY_EGG_VERSION =	5.0.7
TRYTON_MODULE =		account_statement

TRYTON_DEPENDS +=	account \
			account_invoice \
			bank \
			company \
			currency \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
