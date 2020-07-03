# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:30 sthen Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		account_stock_continental
REVISION =		0

TRYTON_DEPENDS +=	account \
			account_product \
			stock

TRYTON_TEST_DEPENDS +=	sale \
			purchase \
			account_invoice \
			sale_supply_drop_shipment

.include <bsd.port.mk>
