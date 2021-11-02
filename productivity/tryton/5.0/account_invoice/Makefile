# $OpenBSD: Makefile,v 1.14 2021/11/02 00:01:56 sthen Exp $

MODPY_EGG_VERSION =	5.0.11
TRYTON_MODULE =		account_invoice
REVISION =		0

TRYTON_DEPENDS +=	account \
			account_product \
			company \
			party \
			product

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
