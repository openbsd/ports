# $OpenBSD: Makefile,v 1.2 2018/12/03 12:51:22 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		account

TRYTON_DEPENDS +=	party \
			currency \
			company

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR} \
			devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
