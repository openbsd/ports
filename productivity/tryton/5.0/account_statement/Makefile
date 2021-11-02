# $OpenBSD: Makefile,v 1.10 2021/11/02 00:01:56 sthen Exp $

MODPY_EGG_VERSION =	5.0.7
TRYTON_MODULE =		account_statement
REVISION =		0

TRYTON_DEPENDS +=	account \
			account_invoice \
			bank \
			company \
			currency \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
