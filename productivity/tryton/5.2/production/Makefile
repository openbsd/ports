# $OpenBSD: Makefile,v 1.1.1.1 2019/05/09 11:48:58 semarie Exp $

MODPY_EGG_VERSION =	5.2.0
TRYTON_MODULE =		production

TRYTON_DEPENDS +=	company \
			product \
			stock

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
