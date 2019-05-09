# $OpenBSD: Makefile,v 1.1.1.1 2019/05/09 11:48:58 semarie Exp $

MODPY_EGG_VERSION =	5.2.0
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
