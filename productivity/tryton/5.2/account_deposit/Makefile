# $OpenBSD: Makefile,v 1.5 2021/11/02 00:02:01 sthen Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		account_deposit
REVISION =		1

TRYTON_DEPENDS +=	account \
			account_invoice \
			company \
			party

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
