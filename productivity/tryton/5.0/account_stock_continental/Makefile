# $OpenBSD: Makefile,v 1.4 2020/04/10 15:21:11 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		account_stock_continental

TRYTON_DEPENDS +=	account \
			account_product \
			stock

TRYTON_TEST_DEPENDS +=	sale \
			purchase \
			account_invoice \
			sale_supply_drop_shipment

.include <bsd.port.mk>
