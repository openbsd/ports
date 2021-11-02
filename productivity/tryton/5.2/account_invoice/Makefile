# $OpenBSD: Makefile,v 1.9 2021/11/02 00:02:02 sthen Exp $

MODPY_EGG_VERSION =	5.2.6
TRYTON_MODULE =		account_invoice
REVISION =		1

TRYTON_DEPENDS +=	account \
			account_product \
			company \
			party \
			product

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
