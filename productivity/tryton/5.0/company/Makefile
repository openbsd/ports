# $OpenBSD: Makefile,v 1.6 2021/11/02 00:01:58 sthen Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		company
REVISION =		1

TRYTON_DEPENDS +=	party \
			currency

RUN_DEPENDS +=		devel/py-tz${MODPY_FLAVOR}

.include <bsd.port.mk>
