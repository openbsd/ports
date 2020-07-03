# $OpenBSD: Makefile,v 1.11 2020/07/03 21:12:25 sthen Exp $

MODPY_EGG_VERSION =	5.0.8
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
