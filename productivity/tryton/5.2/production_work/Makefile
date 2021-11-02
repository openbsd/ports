# $OpenBSD: Makefile,v 1.7 2021/11/02 00:02:05 sthen Exp $

MODPY_EGG_VERSION =	5.2.4
TRYTON_MODULE =		production_work
REVISION =		1

TRYTON_DEPENDS +=	company \
			production \
			production_routing \
			stock

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
