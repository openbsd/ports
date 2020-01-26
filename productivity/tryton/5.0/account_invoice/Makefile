# $OpenBSD: Makefile,v 1.8 2020/01/26 14:41:19 semarie Exp $

MODPY_EGG_VERSION =	5.0.6
TRYTON_MODULE =		account_invoice

TRYTON_DEPENDS +=	account \
			account_product \
			company \
			party \
			product

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
