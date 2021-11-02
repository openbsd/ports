# $OpenBSD: Makefile,v 1.5 2021/11/02 00:02:04 sthen Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		customs
REVISION =		1

TRYTON_DEPENDS +=	country \
			currency \
			product

RUN_DEPENDS +=		devel/py-simpleeval${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
