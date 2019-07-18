# $OpenBSD: Makefile,v 1.4 2019/07/18 07:49:58 semarie Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		account
REVISION =		0

TRYTON_DEPENDS +=	party \
			currency \
			company

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR} \
			devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
