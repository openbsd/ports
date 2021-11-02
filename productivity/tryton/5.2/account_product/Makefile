# $OpenBSD: Makefile,v 1.5 2021/11/02 00:02:02 sthen Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		account_product
REVISION =		1

TRYTON_DEPENDS +=	account \
			company \
			product

TRYTON_TEST_DEPENDS +=	analytic_account

.include <bsd.port.mk>
