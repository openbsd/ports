# $OpenBSD: Makefile,v 1.5 2020/07/03 21:12:30 sthen Exp $

MODPY_EGG_VERSION =	5.2.2
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
