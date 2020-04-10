# $OpenBSD: Makefile,v 1.4 2020/04/10 15:21:15 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		production

TRYTON_DEPENDS +=	company \
			product \
			stock

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
