# $OpenBSD: Makefile,v 1.2 2020/04/10 15:22:45 semarie Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		analytic_account

TRYTON_DEPENDS +=	account \
			company \
			currency \
			party

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
