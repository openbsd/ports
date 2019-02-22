# $OpenBSD: Makefile,v 1.2 2019/02/22 07:24:35 semarie Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		party

TRYTON_DEPENDS +=	country

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR} \
			devel/py-stdnum${MODPY_FLAVOR} \
			telephony/py-phonenumbers${MODPY_FLAVOR}

# optional dependency of devel/py-stdnum
RUN_DEPENDS +=		net/py-simplesoap${MODPY_FLAVOR}

.include <bsd.port.mk>
