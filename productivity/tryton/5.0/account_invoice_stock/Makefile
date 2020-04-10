# $OpenBSD: Makefile,v 1.4 2020/04/10 15:21:11 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		account_invoice_stock

TRYTON_DEPENDS +=	account_invoice \
			stock \
			product

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR} \
			devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
