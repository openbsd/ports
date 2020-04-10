# $OpenBSD: Makefile,v 1.4 2020/04/10 15:21:12 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		analytic_account

TRYTON_DEPENDS +=	account \
			company \
			currency \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
