# $OpenBSD: Makefile,v 1.7 2020/04/10 15:22:43 semarie Exp $

MODPY_EGG_VERSION =	5.2.6
TRYTON_MODULE =		account_invoice

TRYTON_DEPENDS +=	account \
			account_product \
			company \
			party \
			product

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
