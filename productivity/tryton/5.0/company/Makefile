# $OpenBSD: Makefile,v 1.1.1.1 2018/12/03 12:28:16 semarie Exp $

MODPY_EGG_VERSION =	5.0.0
TRYTON_MODULE =		company

TRYTON_DEPENDS +=	party \
			currency

RUN_DEPENDS +=		devel/py-tz${MODPY_FLAVOR}

.include <bsd.port.mk>
