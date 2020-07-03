# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:31 sthen Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		bank
REVISION =		0

TRYTON_DEPENDS +=	party \
			currency

RUN_DEPENDS +=		devel/py-stdnum${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
