# $OpenBSD: Makefile,v 1.8 2021/04/05 15:58:14 semarie Exp $

MODPY_EGG_VERSION =	5.0.5
TRYTON_MODULE =		account_asset

TRYTON_DEPENDS +=	account \
			account_product \
			product	\
			account_invoice

RUN_DEPENDS +=		devel/py-cached-property${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	purchase

.include <bsd.port.mk>
