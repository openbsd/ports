# $OpenBSD: Makefile,v 1.1.1.1 2018/12/19 08:23:44 semarie Exp $

MODPY_EGG_VERSION =	5.0.0
TRYTON_MODULE =		product_price_list

TRYTON_DEPENDS +=	product \
			company

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR} \
			devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
