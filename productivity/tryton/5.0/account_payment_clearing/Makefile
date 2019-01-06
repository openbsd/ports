# $OpenBSD: Makefile,v 1.2 2019/01/06 05:38:23 semarie Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		account_payment_clearing

TRYTON_DEPENDS +=	account_payment

TEST_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_statement

.include <bsd.port.mk>
