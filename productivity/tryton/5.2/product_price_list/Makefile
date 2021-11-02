# $OpenBSD: Makefile,v 1.5 2021/11/02 00:02:05 sthen Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		product_price_list
REVISION =		1

TRYTON_DEPENDS +=	product \
			company

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR} \
			devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
