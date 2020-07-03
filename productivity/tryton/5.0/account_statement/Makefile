# $OpenBSD: Makefile,v 1.8 2020/07/03 21:12:25 sthen Exp $

MODPY_EGG_VERSION =	5.0.6
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
