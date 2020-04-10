# $OpenBSD: Makefile,v 1.7 2020/04/10 15:21:16 semarie Exp $

MODPY_EGG_VERSION =	5.0.5
TRYTON_MODULE =		timesheet

TRYTON_DEPENDS +=	company \
			company_work_time

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
