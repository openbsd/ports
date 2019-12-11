# $OpenBSD: Makefile,v 1.10 2019/12/11 07:19:53 semarie Exp $

MODPY_EGG_VERSION =	5.0.9
TRYTON_MODULE =		account

TRYTON_DEPENDS +=	party \
			currency \
			company

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR} \
			databases/py-sql${MODPY_FLAVOR} \
			devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
