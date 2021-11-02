# $OpenBSD: Makefile,v 1.5 2021/11/02 00:02:03 sthen Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		analytic_account
REVISION =		0

TRYTON_DEPENDS +=	account \
			company \
			currency \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
