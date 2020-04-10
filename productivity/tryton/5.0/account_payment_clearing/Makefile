# $OpenBSD: Makefile,v 1.7 2020/04/10 15:21:11 semarie Exp $

MODPY_EGG_VERSION =	5.0.5
TRYTON_MODULE =		account_payment_clearing

TRYTON_DEPENDS +=	account_payment

TEST_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_statement

.include <bsd.port.mk>
