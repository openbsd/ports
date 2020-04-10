# $OpenBSD: Makefile,v 1.2 2020/04/10 15:22:50 semarie Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		sale_promotion

TRYTON_DEPENDS +=	company \
			product \
			product_price_list \
			sale \
			sale_price_list

RUN_DEPENDS +=		devel/py-simpleeval${MODPY_FLAVOR}

.include <bsd.port.mk>
