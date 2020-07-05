# $OpenBSD: Makefile,v 1.7 2020/07/05 04:51:44 semarie Exp $

MODPY_EGG_VERSION =	5.0.5
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
