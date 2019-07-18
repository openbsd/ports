# $OpenBSD: Makefile,v 1.5 2019/07/18 07:51:14 semarie Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		account_payment_clearing

TRYTON_DEPENDS +=	account_payment

TEST_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_statement

.include <bsd.port.mk>
