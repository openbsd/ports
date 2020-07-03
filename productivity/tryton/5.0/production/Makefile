# $OpenBSD: Makefile,v 1.5 2020/07/03 21:12:28 sthen Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		production
REVISION =		0

TRYTON_DEPENDS +=	company \
			product \
			stock

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
