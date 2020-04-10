# $OpenBSD: Makefile,v 1.5 2020/04/10 15:22:49 semarie Exp $

MODPY_EGG_VERSION =	5.2.4
TRYTON_MODULE =		production_work

TRYTON_DEPENDS +=	company \
			production \
			production_routing \
			stock

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
