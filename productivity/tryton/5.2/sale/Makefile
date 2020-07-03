# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:33 sthen Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		sale
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

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR} \
			graphics/py-pygal${MODPY_FLAVOR}

.include <bsd.port.mk>
