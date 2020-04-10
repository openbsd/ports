# $OpenBSD: Makefile,v 1.3 2020/04/10 15:22:49 semarie Exp $

MODPY_EGG_VERSION =	5.2.2
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
