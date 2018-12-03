# $OpenBSD: Makefile,v 1.1.1.1 2018/12/03 12:28:19 semarie Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		account_statement

TRYTON_DEPENDS +=	account \
			account_invoice \
			bank \
			company \
			currency \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
