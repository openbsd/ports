# $OpenBSD: Makefile,v 1.2 2019/12/11 07:20:52 semarie Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		company

TRYTON_DEPENDS +=	party \
			currency

RUN_DEPENDS +=		devel/py-tz${MODPY_FLAVOR}

.include <bsd.port.mk>
