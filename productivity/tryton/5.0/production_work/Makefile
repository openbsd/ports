# $OpenBSD: Makefile,v 1.9 2021/11/02 00:01:59 sthen Exp $

MODPY_EGG_VERSION =	5.0.5
TRYTON_MODULE =		production_work
REVISION =		0

TRYTON_DEPENDS +=	company \
			production \
			production_routing \
			stock

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
