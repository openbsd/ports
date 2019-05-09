# $OpenBSD: Makefile,v 1.1.1.1 2019/05/09 11:48:53 semarie Exp $

MODPY_EGG_VERSION =	5.2.0
TRYTON_MODULE =		account_statement

TRYTON_DEPENDS +=	account \
			account_invoice \
			bank \
			company \
			currency \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
