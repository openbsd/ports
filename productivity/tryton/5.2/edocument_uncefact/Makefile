# $OpenBSD: Makefile,v 1.1.1.1 2019/05/09 11:48:56 semarie Exp $

MODPY_EGG_VERSION =	5.2.0
TRYTON_MODULE =		edocument_uncefact

TRYTON_DEPENDS +=	edocument_unece

RUN_DEPENDS +=		www/py-genshi${MODPY_FLAVOR} \
			devel/py-cached-property${MODPY_FLAVOR}

TRYTON_TEST_DEPENDS +=	account_invoice

TEST_DEPENDS +=		textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
