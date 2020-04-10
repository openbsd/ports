# $OpenBSD: Makefile,v 1.5 2020/04/10 15:21:16 semarie Exp $

MODPY_EGG_VERSION =	5.0.4
TRYTON_MODULE =		sale

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
