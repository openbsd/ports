# $OpenBSD: Makefile,v 1.4 2021/11/02 00:02:03 sthen Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		bank
REVISION =		1

TRYTON_DEPENDS +=	party \
			currency

RUN_DEPENDS +=		devel/py-stdnum${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
