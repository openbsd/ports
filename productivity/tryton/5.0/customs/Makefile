# $OpenBSD: Makefile,v 1.5 2020/04/10 15:21:13 semarie Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		customs

TRYTON_DEPENDS +=	country \
			currency \
			product

RUN_DEPENDS +=		devel/py-simpleeval${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
