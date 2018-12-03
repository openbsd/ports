# $OpenBSD: Makefile,v 1.1.1.1 2018/12/03 12:28:18 semarie Exp $

MODPY_EGG_VERSION =	5.0.0
TRYTON_MODULE =		purchase

TRYTON_DEPENDS +=	account \
			account_invoice \
			account_invoice_stock \
			account_product \
			company \
			currency \
			party \
			product \
			stock

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
