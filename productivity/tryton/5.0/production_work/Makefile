# $OpenBSD: Makefile,v 1.4 2019/12/11 07:19:54 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		production_work

TRYTON_DEPENDS +=	company \
			production \
			production_routing \
			stock

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
