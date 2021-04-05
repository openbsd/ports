# $OpenBSD: Makefile,v 1.8 2021/04/05 15:58:14 semarie Exp $

MODPY_EGG_VERSION =	5.0.6
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
