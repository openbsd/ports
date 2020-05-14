# $OpenBSD: Makefile,v 1.5 2020/05/14 17:25:15 semarie Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		account_invoice_stock

TRYTON_DEPENDS +=	account_invoice \
			stock \
			product

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR} \
			devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
