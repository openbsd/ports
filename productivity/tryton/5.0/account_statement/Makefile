# $OpenBSD: Makefile,v 1.5 2019/12/11 07:19:53 semarie Exp $

MODPY_EGG_VERSION =	5.0.4
TRYTON_MODULE =		account_statement

TRYTON_DEPENDS +=	account \
			account_invoice \
			bank \
			company \
			currency \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
