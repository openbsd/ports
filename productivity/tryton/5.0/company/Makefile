# $OpenBSD: Makefile,v 1.4 2020/04/10 15:21:13 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		company

TRYTON_DEPENDS +=	party \
			currency

RUN_DEPENDS +=		devel/py-tz${MODPY_FLAVOR}

.include <bsd.port.mk>
