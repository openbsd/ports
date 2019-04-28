# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:48 sthen Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		analytic_invoice
REVISION =		0

TRYTON_DEPENDS +=	account_invoice \
			analytic_account

TRYTON_TEST_DEPENDS +=	account_asset

.include <bsd.port.mk>
