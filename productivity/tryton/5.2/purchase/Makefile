# $OpenBSD: Makefile,v 1.2 2019/12/11 07:20:53 semarie Exp $

MODPY_EGG_VERSION =	5.2.1
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
