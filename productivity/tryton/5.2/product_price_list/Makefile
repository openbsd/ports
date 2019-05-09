# $OpenBSD: Makefile,v 1.1.1.1 2019/05/09 11:48:57 semarie Exp $

MODPY_EGG_VERSION =	5.2.0
TRYTON_MODULE =		product_price_list

TRYTON_DEPENDS +=	product \
			company

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR} \
			devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
