# $OpenBSD: Makefile,v 1.5 2021/11/02 00:02:03 sthen Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		analytic_invoice
REVISION =		1

TRYTON_DEPENDS +=	account_invoice \
			analytic_account

TRYTON_TEST_DEPENDS +=	account_asset

.include <bsd.port.mk>
