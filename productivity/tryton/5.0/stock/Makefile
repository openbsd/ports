# $OpenBSD: Makefile,v 1.4 2019/03/16 06:19:22 semarie Exp $

MODPY_EGG_VERSION =	5.0.4
TRYTON_MODULE =		stock

TRYTON_DEPENDS +=	company \
			currency \
			party \
			product

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
