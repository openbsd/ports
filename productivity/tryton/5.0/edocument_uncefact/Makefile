# $OpenBSD: Makefile,v 1.5 2020/04/10 15:21:13 semarie Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		edocument_uncefact

TRYTON_DEPENDS +=	edocument_unece

RUN_DEPENDS +=		www/py-genshi${MODPY_FLAVOR} \
			devel/py-cached-property${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_invoice

TEST_DEPENDS +=		textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
