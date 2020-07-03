# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:33 sthen Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		sale_promotion
REVISION =		0

TRYTON_DEPENDS +=	company \
			product \
			product_price_list \
			sale \
			sale_price_list

RUN_DEPENDS +=		devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
