# $OpenBSD: Makefile,v 1.9 2021/11/02 00:01:55 sthen Exp $

MODPY_EGG_VERSION =	5.0.5
TRYTON_MODULE =		account_asset
REVISION =		0

TRYTON_DEPENDS +=	account \
			account_product \
			product	\
			account_invoice

RUN_DEPENDS +=		devel/py-cached-property${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	purchase

.include <bsd.port.mk>
