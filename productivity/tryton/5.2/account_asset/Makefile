# $OpenBSD: Makefile,v 1.3 2020/04/10 15:22:41 semarie Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		account_asset

TRYTON_DEPENDS +=	account \
			account_product \
			product	\
			account_invoice

RUN_DEPENDS +=		devel/py-cached-property${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	purchase

.include <bsd.port.mk>
