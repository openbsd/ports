# $OpenBSD: Makefile,v 1.5 2019/08/02 11:18:44 semarie Exp $

MODPY_EGG_VERSION =	5.2.3
TRYTON_MODULE =		account

TRYTON_DEPENDS +=	party \
			currency \
			company

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR} \
			devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
