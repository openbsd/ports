# $OpenBSD: Makefile,v 1.6 2019/12/11 07:19:53 semarie Exp $

MODPY_EGG_VERSION =	5.0.4
TRYTON_MODULE =		account_payment_clearing

TRYTON_DEPENDS +=	account_payment

TEST_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_statement

.include <bsd.port.mk>
