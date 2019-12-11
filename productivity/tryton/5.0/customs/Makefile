# $OpenBSD: Makefile,v 1.4 2019/12/11 07:19:54 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		customs

TRYTON_DEPENDS +=	country \
			currency \
			product

RUN_DEPENDS +=		devel/py-simpleeval${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
