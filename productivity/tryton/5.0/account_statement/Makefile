# $OpenBSD: Makefile,v 1.4 2019/05/16 18:12:54 semarie Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		account_statement

TRYTON_DEPENDS +=	account \
			account_invoice \
			bank \
			company \
			currency \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
