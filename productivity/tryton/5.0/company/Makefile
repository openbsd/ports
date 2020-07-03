# $OpenBSD: Makefile,v 1.5 2020/07/03 21:12:26 sthen Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		company
REVISION =		0

TRYTON_DEPENDS +=	party \
			currency

RUN_DEPENDS +=		devel/py-tz${MODPY_FLAVOR}

.include <bsd.port.mk>
