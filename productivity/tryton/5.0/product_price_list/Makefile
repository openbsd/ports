# $OpenBSD: Makefile,v 1.5 2020/07/03 21:12:27 sthen Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		product_price_list
REVISION =		0

TRYTON_DEPENDS +=	product \
			company

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR} \
			devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
