# $OpenBSD: Makefile,v 1.4 2020/07/03 21:12:31 sthen Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		customs
REVISION =		0

TRYTON_DEPENDS +=	country \
			currency \
			product

RUN_DEPENDS +=		devel/py-simpleeval${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
