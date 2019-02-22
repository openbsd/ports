# $OpenBSD: Makefile,v 1.2 2019/02/22 07:24:36 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
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
			devel/py-dateutil${MODPY_FLAVOR}
#RUN_DEPENDS +=		pygal	# optional dependencies for sparklines. not ported

.include <bsd.port.mk>
