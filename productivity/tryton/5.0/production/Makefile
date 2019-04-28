# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:50 sthen Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		production
REVISION =		0

TRYTON_DEPENDS +=	company \
			product \
			stock

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
