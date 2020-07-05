# $OpenBSD: Makefile,v 1.5 2020/07/05 04:51:45 semarie Exp $

MODPY_EGG_VERSION =	5.2.3
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
