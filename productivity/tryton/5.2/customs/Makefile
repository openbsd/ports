# $OpenBSD: Makefile,v 1.2 2019/12/11 07:20:52 semarie Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		customs

TRYTON_DEPENDS +=	country \
			currency \
			product

RUN_DEPENDS +=		devel/py-simpleeval${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
