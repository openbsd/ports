# $OpenBSD: Makefile,v 1.5 2021/11/02 00:02:03 sthen Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		company
REVISION =		1

TRYTON_DEPENDS +=	party \
			currency

RUN_DEPENDS +=		devel/py-tz${MODPY_FLAVOR}

.include <bsd.port.mk>
