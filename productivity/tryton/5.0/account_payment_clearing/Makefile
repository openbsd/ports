# $OpenBSD: Makefile,v 1.8 2020/07/03 21:12:25 sthen Exp $

MODPY_EGG_VERSION =	5.0.5
TRYTON_MODULE =		account_payment_clearing
REVISION =		0

TRYTON_DEPENDS +=	account_payment

TEST_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_statement

.include <bsd.port.mk>
