# $OpenBSD: Makefile,v 1.3 2020/04/10 15:22:46 semarie Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		customs

TRYTON_DEPENDS +=	country \
			currency \
			product

RUN_DEPENDS +=		devel/py-simpleeval${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
