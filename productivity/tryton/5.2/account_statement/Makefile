# $OpenBSD: Makefile,v 1.4 2020/04/10 15:22:44 semarie Exp $

MODPY_EGG_VERSION =	5.2.3
TRYTON_MODULE =		account_statement

TRYTON_DEPENDS +=	account \
			account_invoice \
			bank \
			company \
			currency \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
