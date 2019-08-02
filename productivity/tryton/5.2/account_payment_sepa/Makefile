# $OpenBSD: Makefile,v 1.2 2019/08/02 11:18:44 semarie Exp $

MODPY_EGG_VERSION =	5.2.0
TRYTON_MODULE =		account_payment_sepa
REVISION =		0

TRYTON_DEPENDS +=	account_payment \
			company \
			bank \
			party

RUN_DEPENDS +=		www/py-genshi${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-stdnum${MODPY_FLAVOR}

.include <bsd.port.mk>
