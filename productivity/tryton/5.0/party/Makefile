# $OpenBSD: Makefile,v 1.5 2020/04/10 15:21:14 semarie Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		party

TRYTON_DEPENDS +=	country

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR} \
			devel/py-stdnum${MODPY_FLAVOR} \
			telephony/py-phonenumbers${MODPY_FLAVOR}

# optional dependency of devel/py-stdnum
RUN_DEPENDS +=		net/py-simplesoap${MODPY_FLAVOR}

.include <bsd.port.mk>
