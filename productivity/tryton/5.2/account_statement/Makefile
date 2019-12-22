# $OpenBSD: Makefile,v 1.3 2019/12/22 13:44:54 semarie Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		account_statement

TRYTON_DEPENDS +=	account \
			account_invoice \
			bank \
			company \
			currency \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
