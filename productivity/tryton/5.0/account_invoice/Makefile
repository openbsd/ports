# $OpenBSD: Makefile,v 1.13 2021/04/05 15:58:14 semarie Exp $

MODPY_EGG_VERSION =	5.0.11
TRYTON_MODULE =		account_invoice

TRYTON_DEPENDS +=	account \
			account_product \
			company \
			party \
			product

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
