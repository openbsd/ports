# $OpenBSD: Makefile,v 1.8 2019/06/12 04:41:56 semarie Exp $

MODPY_EGG_VERSION =	5.0.7
TRYTON_MODULE =		account

TRYTON_DEPENDS +=	party \
			currency \
			company

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR} \
			devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
