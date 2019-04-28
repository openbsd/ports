# $OpenBSD: Makefile,v 1.4 2019/04/28 20:51:50 sthen Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		purchase
REVISION =		0

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
