# $OpenBSD: Makefile,v 1.7 2021/11/02 00:01:58 sthen Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		customs
REVISION =		1

TRYTON_DEPENDS +=	country \
			currency \
			product

RUN_DEPENDS +=		devel/py-simpleeval${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
