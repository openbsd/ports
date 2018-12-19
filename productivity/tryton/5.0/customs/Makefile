# $OpenBSD: Makefile,v 1.1.1.1 2018/12/19 08:18:03 semarie Exp $

MODPY_EGG_VERSION =	5.0.0
TRYTON_MODULE =		customs

TRYTON_DEPENDS +=	country \
			currency \
			product

RUN_DEPENDS +=		devel/py-simpleeval${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
