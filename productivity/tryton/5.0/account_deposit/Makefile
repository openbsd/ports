# $OpenBSD: Makefile,v 1.4 2019/04/28 20:51:47 sthen Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		account_deposit
REVISION =		0

TRYTON_DEPENDS +=	account \
			account_invoice \
			company \
			party

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
