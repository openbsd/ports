# $OpenBSD: Makefile,v 1.4 2020/01/26 14:21:54 semarie Exp $

MODPY_EGG_VERSION =	5.2.3
TRYTON_MODULE =		timesheet

TRYTON_DEPENDS +=	company \
			company_work_time

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
