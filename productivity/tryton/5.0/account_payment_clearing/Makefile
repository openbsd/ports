# $OpenBSD: Makefile,v 1.3 2019/02/22 07:24:35 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		account_payment_clearing

TRYTON_DEPENDS +=	account_payment

TEST_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_statement

.include <bsd.port.mk>
