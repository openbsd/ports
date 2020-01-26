# $OpenBSD: Makefile,v 1.5 2020/01/26 14:21:54 semarie Exp $

MODPY_EGG_VERSION =	5.2.4
TRYTON_MODULE =		account_invoice

TRYTON_DEPENDS +=	account \
			account_product \
			company \
			party \
			product

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
