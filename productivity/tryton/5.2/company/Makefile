# $OpenBSD: Makefile,v 1.3 2020/04/10 15:22:46 semarie Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		company

TRYTON_DEPENDS +=	party \
			currency

RUN_DEPENDS +=		devel/py-tz${MODPY_FLAVOR}

.include <bsd.port.mk>
