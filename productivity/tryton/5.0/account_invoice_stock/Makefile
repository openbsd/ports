# $OpenBSD: Makefile,v 1.7 2021/11/02 00:01:56 sthen Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		account_invoice_stock
REVISION =		1

TRYTON_DEPENDS +=	account_invoice \
			stock \
			product

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR} \
			devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
