# $OpenBSD: Makefile,v 1.5 2020/04/10 15:21:15 semarie Exp $

MODPY_EGG_VERSION =	5.0.3
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
